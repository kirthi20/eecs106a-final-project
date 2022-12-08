#!/usr/bin/env python
import rospy
import tf2_ros
import sys

from geometry_msgs.msg import Twist, Vector3

# Distance threshold for stopping the Turtlebot

def GridCoordSendGoal(self, x, y):
        nearWaypointGoal = False
        while not nearWaypointGoal:
            tempGoalSquare = self.VoxelCenter(x, y)
            # Distance threshold for stopping the Turtlebot
            threshold_distance1 = 0.2
            threshold_distance2 = 0.025
            tempGoal.target_pose.header.frame_id = self._robot_start_frame #odom
            tempGoal.target_pose.header.stamp = rospy.Time.now()

            sensorPosInOdom = self.FramePositionInOdom(self._sensor_frame)

            distance1 = tempGoalSquare[0] - sensorPosInOdom.x
            distance2 = tempGoalSquare[1] - sensorPosInOdom.y

            # If distance is below our threshold, stop running
            if abs(distance1) < threshold_distance1 and abs(distance2) < threshold_distance2:
                nearWaypointGoal = True
                return

            K1 = 0.2
            K2 = -1.5
            velocity = K1 * distance1
            theta = K2 * distance2

            # Generate a control command to send to the robot
            #print(velocity, theta)
            control_command = Twist(Vector3(velocity, 0, 0), Vector3(0, 0, theta))

            self.turtlebot_command_pub.publish(control_command)

def addToQueue(received_waypoint):
    self.waypoints.append(received_waypoint)
    self.turtlebot_command_pub.publish(control_command)

def endControl(yes):
    # Stop the Turtlebot where it is
    control_command = Twist(Vector3(0, 0, 0), Vector3(0, 0, 0))

def cleanQueue(yes):
    # remove everything from the queue, useful if motion planning has found a new path
    self.waypoints = []

if __name__ == "__main__":
    threshold_distance1 = 0.2
    threshold_distance2 = 0.025
    self.waypoints = []
        
    rospy.init_node('new_turtlebot_controller')
    rospy.Subscriber("controller_commands", Pose, addToQueue)
    rospy.Subscriber("controller_commands_clean_queue", int64, 
    rospy.Subscriber("controller_commands_end", int64, endControl)
    rospy.spin()