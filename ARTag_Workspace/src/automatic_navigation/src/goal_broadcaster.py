#!/usr/bin/python

# Basic imports
import rospy
import numpy as np
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseActionGoal
import burger_move_action.msg

from std_msgs.msg import Header
from actionlib_msgs.msg import GoalID
import rospy
import tf2_ros
import tf
import math as Math

from sensor_msgs.msg import LaserScan
from visualization_msgs.msg import Marker
from geometry_msgs.msg import Point, Twist, Pose, Vector3
import geometry_msgs.msg 
from std_msgs.msg import ColorRGBA, MultiArrayLayout, Float32MultiArray, MultiArrayDimension

# Actionlib imports
import actionlib
from actionlib_msgs.msg import *


class GoalBroadcaster():
    def __init__(self):
        self._robot_start_frame = rospy.get_param("~frames/robot_start_frame") # This is where the robot starts (odom frame)—also the origin of the occupancy grid
        self._sensor_frame = rospy.get_param("~frames/sensor") # This represents the current position of the robot; use it when trying to get obstacles
        self._realsense_camera_frame = rospy.get_param("~frames/camera_fixed_frame") # This frame represents the Realsense camera; it doesn't move
        self._robot_ar_frame = rospy.get_param("~frames/robot_ar_frame") # This is ar_marker_0, it's the AR tag (and thus the position of the robot; in static transforms broadcaster we fix the AR tag on the robot)
        # Robot_AR_frame *SHOULD* be the position of the robot as detected from the camera
        self._goal_ar_frame = rospy.get_param("~frames/goal_ar_frame") # This is the current position of the goal AR tag
        #self._home_ar_frame = "ar_marker_8" # This is the position of the start point (same as _fixed_frame if we turn on the robot at the start point)

        # Set up tf buffer and listener.
        self._tf_buffer = tf2_ros.Buffer()
        self._tf_listener = tf2_ros.TransformListener(self._tf_buffer)

        # We need to shut this node down if ROS is shutting down, i.e. perhaps tell the TurtleBot to stop moving
        #rospy.on_shutdown(self.shutdown)
        self.this_client = actionlib.SimpleActionClient("burger_move", burger_move_action.msg.Burger_moveAction) # CHANGE BACKIF NEEDED
        # FOR MORE INFORMATION SEE http://docs.ros.org/en/fuerte/api/move_base_msgs/html/msg/MoveBaseAction.html

        # Wait for 3 seconds for the Action Client *server* to start up
        self.this_client.wait_for_server(rospy.Duration(3))

        # Set up the map, to be filled in at runtime 
        self.np_map = None
        self.last_updated = rospy.Time.now()


        # Grid coordinate parameters
        self._x_num = rospy.get_param("~x/num")
        self._x_min = rospy.get_param("~x/min")
        self._x_max = rospy.get_param("~x/max")
        self._x_res = (self._x_max - self._x_min) / self._x_num # Divide by x_num?
        self._y_num = rospy.get_param("~y/num")
        self._y_min = rospy.get_param("~y/min")
        self._y_max = rospy.get_param("~y/max")
        self._y_res = (self._y_max - self._y_min) / self._y_num # Divide by y_num?

        # Parameter server values
        self._vis_topic = "/vis/path"
        self._vis_pub = rospy.Publisher(self._vis_topic,
                                        Marker,
                                        queue_size=10)
        self._path_topic = rospy.get_param("~topics/path")
        self._path_sub = rospy.Subscriber(self._path_topic, 
                                        Float32MultiArray,
                                        self.GoalBroadcasterCallback,
                                        queue_size=10)
        self._points_queue = []
        
        
    # Is run whenever we receive a new path from the pathfinder (every ~5 seconds)
    def GoalBroadcasterCallback(self, msg):
        rospy.logerr("Goal broadcaster callback called")
        def multiarrayAccessor(i):
            # msg.layout.dim[1] should be 2
            width_stride = msg.layout.dim[1].stride
            return (msg.data[width_stride*i], msg.data[width_stride*i + 1])

        num_points = msg.layout.dim[0].size

        # Clear and refill the points queue with a new path
        self._points_queue = []
        for i in range(num_points):
            point = multiarrayAccessor(i)
            self._points_queue.append(point)

        rospy.logerr("SENDING NEW SET OF GOALS")
        self.GridCoordSendGoals()

    def GridCoordSendGoals(self):
        
        while len(self._points_queue) > 0:
            point = self._points_queue.pop(0)
            x = point[0]
            y = point[1]

            tempGoalSquare = self.VoxelCenter(x, y)
            # Distance threshold for stopping the Turtlebot
            threshold_distance1 = 0.2
            threshold_distance2 = 0.025
            #rospy.logwarn("In grid coord send goal") 
            waypointGoal = burger_move_action.msg.Burger_moveGoal()
            # This is the PoseStamped
            # The grid coordinates have odom in the origin (since x, y are relative to odom)
            # So the goal should be relative to odom
            # tempGoal.target_pose.header.frame_id = self._robot_start_frame # This is odom (we want the goal to be relative to odom)
            # tempGoal.target_pose.header.stamp = rospy.Time.now() # (Remember when we did this before!) The header part of the PoseStamped has a timestamp

            # Move by delta x, y
            # Take your robot's current position relative to odom
            # Do a lookup transform between the robot's current position and th e original position
            sensorPosInOdom = self.FramePositionInOdom(self._sensor_frame)
            temp_x, temp_y = (tempGoalSquare[0] - sensorPosInOdom.x), (tempGoalSquare[1] - sensorPosInOdom.y)
            angle = Math.atan2(temp_y, temp_x)

            if abs(angle) >= threshold_distance2: # NEED TO UPDATE SO THERE'S SOME TOLERANCE HERE, angle will never be exactly zero!
                if angle > 0:
                    waypointGoal.direction = "left"
                    waypointGoal.distance = int(Math.atan2(temp_y, temp_x) * 100)
                    rospy.logwarn("SENDING GOAL NOW LEFT")
                else:
                    waypointGoal.direction = "right"
                    waypointGoal.distance = int(Math.atan2(temp_y, temp_x) * 100)
                    rospy.logwarn("SENDING GOAL NOW RIGHT")
            else:
                waypointGoal.direction = "forward"
                waypointGoal.distance = int(Math.sqrt(temp_x ** 2 + temp_y ** 2)) 
                rospy.logwarn("SENDING GOAL NOW FORWARD")
            
            
            # Send goal and wait until the goal is completed
            self.this_client.send_goal_and_wait(waypointGoal)
            rospy.logwarn("Goal reached!")

            

    # Get the center point (x, y) corresponding to the given voxel.
    def VoxelCenter(self, ii, jj):
        center_x = self._x_min + (0.5 + ii) * self._x_res
        center_y = self._y_min + (0.5 + jj) * self._y_res

        return (center_x, center_y)


    def FramePositionInOdom(self, frame):
        try:
            trans = self._tf_buffer.lookup_transform(self._robot_start_frame, frame, rospy.Time())
        except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
            rate.sleep()
        return trans.transform.translation

if __name__ == "__main__":
    rospy.init_node('goal_broadcaster')
    goalBroadcaster = GoalBroadcaster()
    rospy.spin()