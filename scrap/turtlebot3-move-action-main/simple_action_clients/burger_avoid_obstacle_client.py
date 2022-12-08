#! /usr/bin/env python

import rospy
import math
# Brings in the SimpleActionClient
import actionlib
# Brings in the messages used by the fibonacci action, including the
# goal message and the result message.
import burger_move_action.msg
from sensor_msgs.msg import LaserScan

STOP_DISTANCE = 0.15
LIDAR_ERROR = 0.05
SAFE_STOP_DISTANCE = STOP_DISTANCE + LIDAR_ERROR

def burger_avoid_obstacle_client(actionserver):
    try:
        client = actionlib.SimpleActionClient(actionserver, burger_move_action.msg.Burger_moveAction)
        client.wait_for_server()
        rospy.loginfo('Connected to action server'+actionserver)
        while True:
            scan_filter=[]
            scan = rospy.wait_for_message('scan', LaserScan)
            for i in range(315,359) :            
                if (scan.ranges[i] == float('Inf')) | (math.isnan(scan.ranges[i])):
                    scan_filter.append(5.5)
                elif scan.ranges[i] <0.05 :
                    scan_filter.append(5.5)
                else:
                    scan_filter.append(scan.ranges[i])
            for i in range(0,44) :            
                if (scan.ranges[i] == float('Inf')) | (math.isnan(scan.ranges[i])):
                    scan_filter.append(5.5)
                elif scan.ranges[i] <0.05 :
                    scan_filter.append(5.5)
                else:
                    scan_filter.append(scan.ranges[i])
            min_distance = min(scan_filter)
            if min_distance < SAFE_STOP_DISTANCE:
                #client.cancel_goal()
                goal = burger_move_action.msg.Burger_moveGoal()
                goal.distance=5
                goal.direction = "backward"
                # Sends the goal to the action server.
                client.send_goal(goal)
                client.wait_for_result()
                #client.cancel_all_goals()
                rospy.loginfo('Burger status %s' %( client.get_state()))
                #rospy.loginfo('Burger cancel goal')
    except KeyboardInterrupt:
        rospy.loginfo('end loop')

if __name__ == '__main__':
    robot_name = ''
    try:
        # Initializes a rospy node so that the SimpleActionClient can
        # publish and subscribe over ROS.
        rospy.init_node('burger_avoid_obstacle_client')
        result = burger_avoid_obstacle_client('burger_move')
    except rospy.ROSInterruptException:
        rospy.loginfo('program interrupted before completion')
        
