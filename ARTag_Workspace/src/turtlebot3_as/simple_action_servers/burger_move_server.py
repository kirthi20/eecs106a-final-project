#! /usr/bin/env python

# Authors: Badeig #

import rospy
import math 
import argparse
import actionlib
import burger_move_action.msg

from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from std_msgs.msg import String
from tf.transformations import euler_from_quaternion

LIN_VEL_STEP_SIZE = 0.01
ANG_VEL_STEP_SIZE = 0.1

BURGER_MAX_LIN_VEL = 0.22
BURGER_MAX_ANG_VEL = 2.84

BURGER_WIDTH = 0.16
BURGER_WHEEL = 0.066

DEFAULT_PRECISION = 0.001
#DEFAULT_LINEAR_SPEED = 0.1
#DEFAULT_ANGULAR_SPEED = 0.6
DEFAULT_LINEAR_SPEED = 0.05
DEFAULT_ANGULAR_SPEED = 1.0
DEFAULT_DISTANCE = 0.3
DEFAULT_ANGLE = 1.57


class BurgerMoveAction(object):
    _feedback = burger_move_action.msg.Burger_moveFeedback()
    _result = burger_move_action.msg.Burger_moveResult()
    
    def __init__(self,name,robot_prefix=''):        
        self._action_name = name                       
        self.robot_prefix = robot_prefix
        self.pub = rospy.Publisher('cmd_vel', Twist, queue_size=20)          
#        self.sub = rospy.Subscriber(self.robot_prefix+'/odom',Odometry,self.setmotor)
        self._as = actionlib.SimpleActionServer(self._action_name, burger_move_action.msg.Burger_moveAction, execute_cb=self.execute_cb, auto_start = False)
        self._as.start()

#    def setmotor(self,msg):
#        self.motor_info = msg

    def execute_cb(self, goal):
        # helper variables
        rosrate = rospy.Rate(30)
        success = True

        while self.pub.get_num_connections() == 0:
            rospy.loginfo("Waiting for subscriber to connect")
            # check that preempt has not been requested by the client
            if self._as.is_preempt_requested():
                rospy.loginfo('%s: Preempted' % self._action_name)
                self._as.set_preempted()
                success = False
                break
            rosrate.sleep()
       
        # append the current distance
        self._feedback.step_distance = []
        current_distance = 0
        self._feedback.step_distance.append(current_distance)        
        
        # publish info to the console for the user
        rospy.loginfo('%s: Executing, of burger move with total distance %i in %s' % (self._action_name, goal.distance, goal.direction))

        self.motor_info = rospy.wait_for_message('odom', Odometry, timeout=10)
        self.current_position = [self.motor_info.pose.pose.position.x, self.motor_info.pose.pose.position.y] # self.motor_info.pose.pose.position.z
        self.current_orientation = [self.motor_info.pose.pose.orientation.x, self.motor_info.pose.pose.orientation.y, self.motor_info.pose.pose.orientation.z, self.motor_info.pose.pose.orientation.w] # self.motor_info.pose.pose.position.z
        (current_roll, current_pitch, current_yaw) = euler_from_quaternion(self.current_orientation)
        current_roll = int(current_roll*100)
        current_pitch = int(current_pitch*100)
        current_yaw = int(current_yaw*100)
        #rospy.loginfo('%s: feedback %f' % (self._action_name, yaw))

        twist = Twist()
        if(goal.direction=='left'):
            twist.linear.x = 0.0; twist.linear.y = 0.0; twist.linear.z = 0.0
            twist.angular.x = 0.0; twist.angular.y = 0.0; twist.angular.z = DEFAULT_ANGULAR_SPEED
        elif (goal.direction=='right'):
            twist.linear.x = 0.0; twist.linear.y = 0.0; twist.linear.z = 0.0
            twist.angular.x = 0.0; twist.angular.y = 0.0; twist.angular.z = -DEFAULT_ANGULAR_SPEED
        elif (goal.direction=='forward'):
            twist.linear.x = DEFAULT_LINEAR_SPEED; twist.linear.y = 0.0; twist.linear.z = 0.0
            twist.angular.x = 0.0; twist.angular.y = 0.0; twist.angular.z = 0.0
        elif (goal.direction=='backward'):
            twist.linear.x = -DEFAULT_LINEAR_SPEED; twist.linear.y = 0.0; twist.linear.z = 0.0
            twist.angular.x = 0.0; twist.angular.y = 0.0; twist.angular.z = 0.0
        self.pub.publish(twist)

        while ( success and (not rospy.is_shutdown()) and (current_distance < goal.distance)):
            # check that preempt has not been requested by the client
            if self._as.is_preempt_requested():
                rospy.loginfo('%s: Preempted' % self._action_name)
                self._as.set_preempted()
                success = False
                break
            try:
                self.motor_info = rospy.wait_for_message('odom', Odometry, timeout=5)            
                cposition = [self.motor_info.pose.pose.position.x, self.motor_info.pose.pose.position.y] # self.motor_info.pose.pose.position.z   
                self.current_orientation = [self.motor_info.pose.pose.orientation.x, self.motor_info.pose.pose.orientation.y, self.motor_info.pose.pose.orientation.z, self.motor_info.pose.pose.orientation.w] # self.motor_info.pose.pose.position.z
                #current_distance = int(math.hypo(cposition.x-self.current_position.x,cposition.y-self.current_position.y)*100)
                #current_distance = int(math.dist(cposition, self.current_position)*100)
                if(goal.direction=='backward' or goal.direction=='forward'):
                    # rospy.loginfo('old position : %f %f -- new position : %f %f' % (self.current_position[0], self.current_position[1], cposition[0], cposition[1]))
                    #rospy.loginfo('distance : %f' % (math.sqrt(sum((px - qx) ** 2.0 for px, qx in zip(self.current_position, cposition)))*100))
                    current_distance += math.sqrt(sum((px - qx) ** 2.0 for px, qx in zip(self.current_position, cposition)))*100
                    self.current_position = cposition
                else:
                    (croll, cpitch, cyaw) = euler_from_quaternion(self.current_orientation)
                    croll = int(croll*100)
                    cpitch = int(cpitch*100)
                    cyaw = int(cyaw*100)
                    current_distance += abs(cyaw-current_yaw)
                    current_roll = croll
                    current_pitch = cpitch
                    current_yaw = cyaw
                    #rospy.loginfo('%s: feedback %f %f %f' % (self._action_name, croll, cpitch, cyaw))         
                self._feedback.step_distance.append(int(current_distance))            
                # publish the feedback
                rospy.loginfo('%s: feedback %i' % (self._action_name, current_distance))
                self._as.publish_feedback(self._feedback)
                rosrate.sleep()
            except ROSException:
                self._as.set_preempted()
                success = False
                break
        twist = Twist()
        twist.linear.x = 0.0; twist.linear.y = 0.0; twist.linear.z = 0.0
        twist.angular.x = 0.0; twist.angular.y = 0.0; twist.angular.z = 0.0
        self.pub.publish(twist)
        if success:
            self._result.current_distance = int(current_distance)
            rospy.loginfo('%s: Succeeded' % self._action_name)
            self._as.set_succeeded(self._result) 
        
if __name__ == '__main__':
    robot_name = ''
    rospy.init_node('burger_move'+robot_name)
    server = BurgerMoveAction(rospy.get_name(),robot_name)
    rospy.spin()