#!/usr/bin/python
"""
For more information, ask Chetan/Aditya. This code isn't currently interfacing with the main robot!
I'm working on motion planning. This is mostly sending code. Not much planning!
"""
# Basic imports
import rospy
import numpy as np
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
import rospy
import tf2_ros
import tf
import math as Math

from sensor_msgs.msg import LaserScan
from visualization_msgs.msg import Marker
from geometry_msgs.msg import Point
from std_msgs.msg import ColorRGBA, MultiArrayLayout, Float32MultiArray, MultiArrayDimension

# Actionlib imports
import actionlib
from actionlib_msgs.msg import *


## MAKE SURE TO LAUNCH AMCL_DEMO.LAUNCH ALSO!!! (In addition to minimal.launch)
# Remember we should have code to do 2D pose estimation also

class MotionPlanningAndSending():
    def __init__(self):
        # STAGE 1: We create the client node and the ActionClient
        

        self._fixed_frame = rospy.get_param("~frames/fixed") # This is the where the robot stars
        self._sensor_frame = rospy.get_param("~frames/sensor") # This is the frame of the LiDAR sensor (so it is the current position of the robot)
        self._robot_ar_frame = rospy.get_param("~frames/robot_ar_frame") # This is the current position of the robot relative to the camera
        self._goal_ar_frame = rospy.get_param("~frames/goal_ar_frame") # This is the current position of the goal relative to the camera
        #self._home_ar_frame = "ar_marker_8" # This is the position of the start point (same as _fixed_frame if we turn on the robot at the start point)

        # Set up tf buffer and listener.
        self._tf_buffer = tf2_ros.Buffer()
        self._tf_listener = tf2_ros.TransformListener(self._tf_buffer)

        # We need to shut this node down if ROS is shutting down, i.e. perhaps tell the TurtleBot to stop moving
        #rospy.on_shutdown(self.shutdown)
        self.this_client = actionlib.SimpleActionClient("move_base", MoveBaseAction)
        # FOR MORE INFORMATION SEE http://docs.ros.org/en/fuerte/api/move_base_msgs/html/msg/MoveBaseAction.html

        # Wait for 3 seconds for the Action Client *server* to start up
        self.this_client.wait_for_server(rospy.Duration(3))

        ###

        # Set up the map, to be filled in at runtime 
        self.np_map = None

        # Parameter server values
        self._x_num = rospy.get_param("~x/num")
        self._x_min = rospy.get_param("~x/min")
        self._x_max = rospy.get_param("~x/max")
        self._x_res = (self._x_max - self._x_min) / self._x_num # Divide by x_num?
        self._y_num = rospy.get_param("~y/num")
        self._y_min = rospy.get_param("~y/min")
        self._y_max = rospy.get_param("~y/max")
        self._y_res = (self._y_max - self._y_min) / self._y_num # Divide by y_num?


        # Set up subscriber to get the occupancy grid array
        self._grid_topic = rospy.get_param("~topics/grid") # Parameter server in demo.launch
        self._grid_sub = rospy.Subscriber(self._grid_topic, 
                                        Float32MultiArray,
                                        self.PathfinderCallback,
                                        queue_size=10)


        """ 
        # We want to get the transform from the AR Tag of the walking person

        # TODO: get the transform from current Turtlebot position to AR tag
        # using tfBuffer and tfListener I reckon

        goal = MoveBaseGoal()
        # This is the PoseStamped
        goal.target_pose.header.frame_id = 'base_link' # This is the rotational center of TurtleBot 3
        goal.target_pose.header.stamp = rospy.Time.now() # (Remember when we did this before!) The header part of the PoseStamped has a timestamp
        goal.target_pose.pose.position.x = 0
        goal.target_pose.pose.orientation.w = 0
        # TODO: get the pose from the AR TAG

        # Send the goal to go to the AR tag to the turtlebot
        self.this_client.send_goal(goal)

        # TODO: Decide on how long it will take to feedback

        # TODO: how to deal with fact that the AR tag is moving? Should we cancel the goal constantly and then update?
        # I feel like a problem like that perhaps should be implemented more at the goal level if anything
        # TODO: obstacle avoidance from LiDAR data!

        # We give TurtleBot 300 seconds to get to the target; if it hasn't something may be wrong
        # (We can remove this later)
        reachedTarget = self.this_client.wait_for_result(rospy.Duration(300))

        # USEFUL: https://sir.upc.edu/projects/rostutorials/7-actions_tutorial/index.html
        # Can preemptively change the goal with no problem
        if not reachedTarget:
            self.this_client.cancel_goal()
            # perhaps log it that we failed? (could also log that we succeeded in the else case)
        """


    # Function that is called when subscribing to the occupancy grid topic
    # Puts the data into a 2D data structure of choice (numpy array for now)
    # Then, calls a pathfinder to find a path from start to goal (DFS/Djikstras for now)
    def PathfinderCallback(self, msg):
        def multiarrayAccessor(i, j):
            #msg.layout.dim[1] should be the width dimension
            width_stride = msg.layout.dim[1].stride
            return msg.data[width_stride*i + j]

        height = msg.layout.dim[0].size
        width = msg.layout.dim[1].size

        self.np_map = np.zeros((height, width))

        for i in range(height):
            for j in range(width):
                self.np_map[i][j] = multiarrayAccessor(i, j)

        # Debugging : print out the map
        with np.printoptions(threshold=np.inf):
            print(self.np_map)

        path = self.Pathfind(height, width)
        if path:
            self.VisualizePath(path)


    # Finds a path from a start (robot) to a goal in the map
    def Pathfind(self, height, width):
        # Note : self.np_map[0][0] refers to the top left 
        start = self.getRobotGridPosition()

        # goal = self.getGoalGridPosition()
        goal = (start[0] + 3, start[1] + 3) # Just a test goal for now

        # Make a copy of the map
        grid_map = np.copy(self.np_map) # This map is the occupancy grid
        path_map = np.zeros((height, width)) # This map will purely have the path in it (nothing else)

        # TODO : Run a pathfinding algorithm on self.np_map
        # Currently using https://www.geeksforgeeks.org/check-possible-path-2d-matrix/
        #
        
        # directions
        Dir = [[0,1], [0,-1], [1,0], [-1,0]]

        # queue
        q = []

        # insert start
        q.append(start)

        # until queue is empty
        while(len(q) > 0):
#             p is grid_x, grid_y
#             transform to pose?
            p = q[0]
            q.pop(0)
            

            # mark as visited
            path_map[p[0]][p[1]] = 1
            grid_map[p[0]][p[1]] = 1

            # destination is reached
            if(p == goal):
                return path_map

            # check in all four directions
            for i in range(4):
                a = p[0] + Dir[i][0]
                b = p[1] + Dir[i][1]

                # not blocked and valid
                if(a >= 0 and b >= 0 and a < height and b < width and grid_map[a][b] == 0.5):
                    q.append((a,b))
        return False
        
    def GridCoordToPose(self, x, y):
        gridPose = Pose()
        gridPose.position.x = x
        gridPose.position.x = y
        gridPose.position.z = 0
       
        angle = np.arctan2(_goal_ar_frame.position.y - y, _goal_ar_frame.position.x - x)[1]
        
        gridPose.orientation.x = 0
        gridPose.orientation.y = 0
        gridPose.orientation.z = 1
        gridPose.orientation.w = angle
        
        return gridPose
        
        

    # Given a height x width numpy array containing a path, visualize on rviz
    def VisualizePath(self, path):
        m = Marker()
        m.header.stamp = rospy.Time.now()
        m.header.frame_id = self._fixed_frame
        m.ns = "map"
        m.id = 0
        m.type = Marker.CUBE_LIST
        m.action = Marker.ADD
        m.scale.x = self._x_res
        m.scale.y = self._y_res
        m.scale.z = 0.05

        for ii in range(self._x_num):
            for jj in range(self._y_num):
                p = Point(0.0, 0.0, 0.0)
                (p.x, p.y) = self.VoxelCenter(ii, jj)

                m.points.append(p)

                c = ColorRGBA()
                c.r = 0
                c.g = 0
                c.b = 0
                c.a = 0
                if path[ii][jj] == 1:
                    c.r = 0
                    c.g = 100
                    c.b = 0
                    c.a = 0.75
                m.colors.append(c)

        self._vis_pub.publish(m)

    # Convert (x, y) coordinates in odom frame to grid coordinates.
    def PointToVoxel(self, x, y):
        grid_x = int((x - self._x_min) / self._x_res)
        grid_y = int((y - self._y_min) / self._y_res)

        return (grid_x, grid_y)

    # Get the center point (x, y) corresponding to the given voxel.
    def VoxelCenter(self, ii, jj):
        center_x = self._x_min + (0.5 + ii) * self._x_res
        center_y = self._y_min + (0.5 + jj) * self._y_res

        return (center_x, center_y)

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


    def getRobotGridPosition(self):
        # Get our current pose from TF.
        try:
            pose = self._tf_buffer.lookup_transform(
                self._fixed_frame, self._sensor_frame, rospy.Time())
        except (tf2_ros.LookupException,
                tf2_ros.ConnectivityException,
                tf2_ros.ExtrapolationException) as e: # DEBUGGING
            # Writes an error message to the ROS log but does not raise an exception
            rospy.logerr("%s: Could not extract pose from TF.")
            rospy.logerr(e) # DEBUGGING
            return

        # Extract x, y coordinates and heading (yaw) angle of the turtlebot, 
        # assuming that the turtlebot is on the ground plane.
        sensor_x = pose.transform.translation.x
        sensor_y = pose.transform.translation.y
        if abs(pose.transform.translation.z) > 0.05:
            rospy.logwarn("%s: Turtlebot is not on ground plane.")

        grid_x, grid_y = self.PointToVoxel(sensor_x, sensor_y) 

        return (grid_x, grid_y)


        #         self._goal_ar_frame = "ar_marker_4"
        # self._home_ar_frame = "ar_marker_8"


    def getGoalGridPosition(self):
        # Get the transform between base_link (sensor frame) and the robot AR tag
        t, r = self._tf_buffer.lookup_transform(
                self._robot_ar_frame, self._sensor_frame, rospy.Time())

        # Apply the same transform to the goal AR tag to get position of goal relative in odom frame
        # TODO
        # currentTF = np.matrix(transformations.quaternion_matrix(r))
        # currentTF[0,3] = t[0]
        # currentTF[1,3] = t[1]
        # currentTF[2,3] = t[2]







    def getHomeGridPosition(self):
        # Get the transform between base_link (sensor frame) and the robot AR tag
        pose = self._tf_buffer.lookup_transform(
                self._robot_ar_frame, self._sensor_frame, rospy.Time())

        # Apply the same transform to the goal AR tag to get position of home relative in odom frame
        # TODO
        # get transform from robot ar to sensor
        # transform to numpy array
        # home frame to np array 
        # re


if __name__ == "__main__":
    rospy.init_node('planning_client')
    mapper = MotionPlanningAndSending()
    rospy.spin()
