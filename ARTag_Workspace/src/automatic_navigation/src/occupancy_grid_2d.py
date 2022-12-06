################################################################################
#
# OccupancyGrid2d class listens for LaserScans and builds an occupancy grid.
#
################################################################################

import rospy
import tf2_ros
import tf
import math as Math

from sensor_msgs.msg import LaserScan
from visualization_msgs.msg import Marker
from geometry_msgs.msg import Point
from std_msgs.msg import ColorRGBA, MultiArrayLayout, Float32MultiArray, MultiArrayDimension

import numpy as np

class OccupancyGrid2d(object):
    def __init__(self):
        self._intialized = False

        # Set up tf buffer and listener.
        self._tf_buffer = tf2_ros.Buffer()
        self._tf_listener = tf2_ros.TransformListener(self._tf_buffer)

    # Initialization and loading parameters.
    def Initialize(self):
        self._name = rospy.get_name() + "/grid_map_2d"

        # Load parameters.
        if not self.LoadParameters():
            rospy.logerr("%s: Error loading parameters.", self._name)
            return False

        # Register callbacks.
        if not self.RegisterCallbacks():
            rospy.logerr("%s: Error registering callbacks.", self._name)
            return False

        # Set up the map.
        self._map = np.zeros((self._x_num, self._y_num))

        self._initialized = True
        return True

    def LoadParameters(self):
        # Random downsampling fraction, i.e. only keep this fraction of rays.
        if not rospy.has_param("~random_downsample"):
            return False
        self._random_downsample = rospy.get_param("~random_downsample")

        # Dimensions and bounds.
        # TODO! You'll need to set values for class variables called:
        # -- self._x_num
        self._x_num = rospy.get_param("~x/num")
        
        # -- self._x_min
        self._x_min = rospy.get_param("~x/min")
        
        # -- self._x_max
        self._x_max = rospy.get_param("~x/max")
        
        # -- self._x_res # The resolution in x. Note: This isn't a ROS parameter. What will you do instead?
        self._x_res = (self._x_max - self._x_min) / self._x_num # Divide by x_num?

        # -- self._y_num
        self._y_num = rospy.get_param("~y/num")

        # -- self._y_min
        self._y_min = rospy.get_param("~y/min")
        
        # -- self._y_max
        self._y_max = rospy.get_param("~y/max")
        
        # -- self._y_res # The resolution in y. Note: This isn't a ROS parameter. What will you do instead?
        self._y_res = (self._y_max - self._y_min) / self._y_num # Divide by y_num?

        # Update parameters.
        if not rospy.has_param("~update/occupied"):
            return False
        self._occupied_update = self.ProbabilityToLogOdds(
            rospy.get_param("~update/occupied"))

        if not rospy.has_param("~update/occupied_threshold"):
            return False
        self._occupied_threshold = self.ProbabilityToLogOdds(
            rospy.get_param("~update/occupied_threshold"))

        if not rospy.has_param("~update/free"):
            return False
        self._free_update = self.ProbabilityToLogOdds(
            rospy.get_param("~update/free"))
        #self._free_update = self.ProbabilityToLogOdds(-0.3) # OUR LINE DEBUGGGING ******

        if not rospy.has_param("~update/free_threshold"):
            return False
        self._free_threshold = self.ProbabilityToLogOdds(
            rospy.get_param("~update/free_threshold"))

        # Topics.
        # TODO! You'll need to set values for class variables called:
        # -- self._sensor_topic
        self._sensor_topic = rospy.get_param("~topics/sensor")
        # -- self._vis_topic
        self._vis_topic = rospy.get_param("~topics/vis")

        self._grid_topic = rospy.get_param("~topics/grid")

        # Frames.
        # TODO! You'll need to set values for class variables called:
        # -- self._sensor_frame
        self._sensor_frame = rospy.get_param("~frames/sensor")

        # -- self._fixed_frame
        self._fixed_frame = rospy.get_param("~frames/fixed")

        # Grid locations of robot, to be found at runtime
        self._robot_x = None
        self._robot_y = None

        return True

    def RegisterCallbacks(self):
        # Subscriber.
        self._sensor_sub = rospy.Subscriber(self._sensor_topic,
                                            LaserScan,
                                            self.SensorCallback,
                                            queue_size=1)

        # Publisher.
        self._vis_pub = rospy.Publisher(self._vis_topic,
                                        Marker,
                                        queue_size=10)

        self._grid_pub = rospy.Publisher(self._grid_topic, 
                                        Float32MultiArray,
                                        queue_size=10)

        return True

    # Callback to process sensor measurements.
    def SensorCallback(self, msg):
        if not self._initialized:
            rospy.logerr("%s: Was not initialized.", self._name)
            return

        # Get our current pose from TF.
        try:
            pose = self._tf_buffer.lookup_transform(
                self._fixed_frame, self._sensor_frame, rospy.Time())
        except (tf2_ros.LookupException,
                tf2_ros.ConnectivityException,
                tf2_ros.ExtrapolationException) as e: # DEBUGGING
            # Writes an error message to the ROS log but does not raise an exception
            rospy.logerr("%s: Could not extract pose from TF.", self._name)
            rospy.logerr(e) # DEBUGGING
            return

        # Extract x, y coordinates and heading (yaw) angle of the turtlebot, 
        # assuming that the turtlebot is on the ground plane.
        sensor_x = pose.transform.translation.x
        sensor_y = pose.transform.translation.y
        self._robot_x, self._robot_y = self.PointToVoxel(sensor_x, sensor_y)

        if abs(pose.transform.translation.z) > 0.05:
            rospy.logwarn("%s: Turtlebot is not on ground plane.", self._name)

        (roll, pitch, yaw) = tf.transformations.euler_from_quaternion(
            [pose.transform.rotation.x, pose.transform.rotation.y,
             pose.transform.rotation.z, pose.transform.rotation.w])
        if abs(roll) > 0.1 or abs(pitch) > 0.1:
            rospy.logwarn("%s: Turtlebot roll/pitch is too large.", self._name)

        # Loop over all ranges in the LaserScan.
        for idx, r in enumerate(msg.ranges):
            # Randomly throw out some rays to speed this up.
            if np.random.rand() > self._random_downsample:
                continue
            elif np.isnan(r):
                continue

            # Get angle of this ray in fixed frame.
            # TODO!
            ray_angle_sensor = msg.angle_min + idx*msg.angle_increment 
            ray_angle = ray_angle_sensor + yaw

             # Throw out this point if it is too close or too far away.
            if r > msg.range_max:
                rospy.logwarn("%s: Range %f > %f was too large.",
                              self._name, r, msg.range_max)
                continue
            if r < msg.range_min:
                rospy.logwarn("%s: Range %f < %f was too small.",
                              self._name, r, msg.range_min)
                continue

            # Walk along this ray from the scan point to the sensor.
            # Update log-odds at each voxel along the way.
            # Only update each voxel once. 
            # The occupancy grid is stored in self._map
            # Use methods below
            # TODO!
            first_voxel = True
            last_coords = (None, None)
            #range_step = (msg.range_max - msg.range_min) / len(msg.ranges)
            #-min(self._x_res, self._y_res)
            for r_curr in np.arange(start=r, stop=0, step=-min(self._x_res, self._y_res)):
                ray_x = r_curr*np.cos(ray_angle) + sensor_x
                ray_y = r_curr*np.sin(ray_angle) + sensor_y 

                ##### START CHANGES HERE ###### 

                ### START TRANSFORMED TO FIXED
                
                """try:
                    pose_to_fixed = self._tf_buffer.lookup_transform(
                    self._sensor_frame, self._fixed_frame, rospy.Time())
                except (tf2_ros.LookupException,
                    tf2_ros.ConnectivityException,
                    tf2_ros.ExtrapolationException) as e: # DEBUGGING
                    # Writes an error message to the ROS log but does not raise an exception
                    rospy.logerr("%s: Could not extract pose from TF.", self._name)
                    rospy.logerr(e) # DEBUGGING
                    return

                transformed_ray_x = ray_x + pose_to_fixed.transform.translation.x
                transformed_ray_y = ray_y + pose_to_fixed.transform.translation.y

                (roll, pitch, yaw) = tf.transformations.euler_from_quaternion(
                 [pose_to_fixed.transform.rotation.x, pose_to_fixed.transform.rotation.y,
                pose_to_fixed.transform.rotation.z, pose_to_fixed.transform.rotation.w]) """

                #grid_x, grid_y = self.PointToVoxel(transformed_ray_x, transformed_ray_y) 

                ### END TRANSFORM TO FIXED

                grid_x, grid_y = self.PointToVoxel(ray_x, ray_y) 

                if last_coords == (grid_x, grid_y):
                    continue

                ##### END CHANGES HERE ######  
                  
                if first_voxel:
                    
                    self._map[grid_x][grid_y] = min(self._map[grid_x][grid_y] + self._occupied_update,
                            self._occupied_threshold)
                        
                else: 
                    self._map[grid_x][grid_y] = max(self._map[grid_x][grid_y] + self._free_update,
                            self._free_threshold)
                        

                last_coords = (grid_x, grid_y)
                first_voxel = False

            

        # Visualize.
        self.Visualize()
        self.PublishToPathFinder()

    # Convert (x, y) coordinates in fixed frame to grid coordinates.
    def PointToVoxel(self, x, y):
        grid_x = int((x - self._x_min) / self._x_res)
        grid_y = int((y - self._y_min) / self._y_res)

        return (grid_x, grid_y)

    # Get the center point (x, y) corresponding to the given voxel.
    def VoxelCenter(self, ii, jj):
        center_x = self._x_min + (0.5 + ii) * self._x_res
        center_y = self._y_min + (0.5 + jj) * self._y_res

        return (center_x, center_y)

    # Convert between probabity and log-odds.
    def ProbabilityToLogOdds(self, p):
        return np.log(p / (1.0 - p))

    def LogOddsToProbability(self, l):
        return 1.0 / (1.0 + np.exp(-l))

    # Colormap to take log odds at a voxel to a RGBA color.
    def Colormap(self, ii, jj):

        p = self.LogOddsToProbability(self._map[ii, jj])

        c = ColorRGBA()

        ## CUSTOM CODE : coloring square where robot is
        if ii == self._robot_x and jj == self._robot_y:
            c.r = 0
            c.g = 100
            c.b = 0
            c.a = 0.75
            return c
        ##      

        c.r = p
        c.g = 0.1
        c.b = 1.0 - p
        c.a = 0.75
        return c

    # Visualize the map as a collection of flat cubes instead of
    # as a built-in OccupancyGrid message, since that gives us more
    # flexibility for things like color maps and stuff.
    # See http://wiki.ros.org/rviz/DisplayTypes/Marker for a brief tutorial.
    def Visualize(self):
        m = Marker()
        m.header.stamp = rospy.Time.now()
        m.header.frame_id = self._fixed_frame
        m.ns = "map"
        m.id = 0
        m.type = Marker.CUBE_LIST
        m.action = Marker.ADD
        m.scale.x = self._x_res
        m.scale.y = self._y_res
        m.scale.z = 0.01

        for ii in range(self._x_num):
            for jj in range(self._y_num):
                p = Point(0.0, 0.0, 0.0)
                (p.x, p.y) = self.VoxelCenter(ii, jj)

                m.points.append(p)
                m.colors.append(self.Colormap(ii, jj))

        self._vis_pub.publish(m)


    def PublishToPathFinder(self):
        ma = Float32MultiArray()
        layout = MultiArrayLayout()

        # Set up the layout according to http://docs.ros.org/en/api/std_msgs/html/msg/MultiArrayLayout.html
        heightdim = MultiArrayDimension()
        heightdim.label = "height"
        heightdim.size = self._y_num
        heightdim.stride =  self._x_num * self._y_num
        layout.dim.append(heightdim)

        widthdim = MultiArrayDimension()
        widthdim.label = "width"
        widthdim.size = self._x_num
        widthdim.stride = self._x_num
        layout.dim.append(widthdim)

        ma.layout = layout

        # Fill in the data for the multiarray
        for i in range(self._x_num):
            for j in range(self._y_num):
                p = self.LogOddsToProbability(self._map[i, j])
                ma.data.append(p)

        # Publish to our custom topic
        self._grid_pub.publish(ma)
