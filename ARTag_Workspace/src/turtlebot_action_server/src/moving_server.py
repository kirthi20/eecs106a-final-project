import rospy
import time
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
DEFAULT_LINEAR_SPEED = 0.11
DEFAULT_ANGULAR_SPEED = 1.4
DEFAULT_DISTANCE = 0.3
DEFAULT_ANGLE = 1.57


class BurgerMoveAction(object):
    _feedback = burger_move_action.msg.Burger_moveFeedback()
    _result = burger_move_action.msg.Burger_moveResult()
    
    def __init__(self,name):        
        self._action_name = name                       
        self.pub = rospy.Publisher('cmd_vel', Twist, queue_size=20)          
#        self.sub = rospy.Subscriber('odom',Odometry,self.setmotor)
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
                self._result.current_distance = 0
                self._result.request_id = goal.request_id
                self._result.status = "preempted"
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

        #rospy.loginfo('%s: feedback %f' % (self._action_name, yaw))

        twist = Twist()
        if(goal.direction=='left'):
            twist.linear.x = 0.0; twist.linear.y = 0.0; twist.linear.z = 0.0
            twist.angular.x = 0.0; twist.angular.y = 0.0; twist.angular.z = DEFAULT_ANGULAR_SPEED
            end_time = goal.distance*0.01 / DEFAULT_ANGULAR_SPEED
        elif (goal.direction=='right'):
            twist.linear.x = 0.0; twist.linear.y = 0.0; twist.linear.z = 0.0
            twist.angular.x = 0.0; twist.angular.y = 0.0; twist.angular.z = -DEFAULT_ANGULAR_SPEED
            end_time = goal.distance*0.01 / DEFAULT_ANGULAR_SPEED
        elif (goal.direction=='forward'):
            twist.linear.x = DEFAULT_LINEAR_SPEED; twist.linear.y = 0.0; twist.linear.z = 0.0
            twist.angular.x = 0.0; twist.angular.y = 0.0; twist.angular.z = 0.0
            end_time = goal.distance*0.01 / DEFAULT_LINEAR_SPEED
        elif (goal.direction=='backward'):
            twist.linear.x = -DEFAULT_LINEAR_SPEED; twist.linear.y = 0.0; twist.linear.z = 0.0
            twist.angular.x = 0.0; twist.angular.y = 0.0; twist.angular.z = 0.0
            end_time = goal.distance*0.01 / DEFAULT_LINEAR_SPEED
        self.pub.publish(twist)

        wait_time = time.time() 
        current_time = 0.0

        twist_end = Twist()
        twist_end.linear.x = 0.0; twist_end.linear.y = 0.0; twist_end.linear.z = 0.0
        twist_end.angular.x = 0.0; twist_end.angular.y = 0.0; twist_end.angular.z = 0.0

        #motor_info1 = rospy.wait_for_message('odom', Odometry, timeout=5)            
        #cposition1 = [motor_info1.pose.pose.position.x, motor_info1.pose.pose.position.y]

        while ( success and (not rospy.is_shutdown()) and ( current_time < end_time)):
            # check that preempt has not been requested by the client
            if self._as.is_preempt_requested():
                rospy.loginfo('%s: Preempted' % self._action_name)
                self._result.current_distance = int(current_distance)
                self._result.status = "preempted"
                self._result.request_id = goal.request_id
                self._as.set_preempted(self._result)
                success = False
                break
            current_time = time.time() - wait_time

            if(goal.direction=='backward' or goal.direction=='forward'):
                current_distance = current_time * DEFAULT_LINEAR_SPEED * 100
            else:
                current_distance = current_time * DEFAULT_ANGULAR_SPEED * 100
            self._feedback.step_distance.append(int(current_distance))            
            # publish the feedback
            rospy.loginfo('%s: feedback %i' % (self._action_name, current_distance))
            self._as.publish_feedback(self._feedback)
            rosrate.sleep()      
        #motor_info2 = rospy.wait_for_message('odom', Odometry, timeout=5)            
        #cposition2 = [motor_info2.pose.pose.position.x, motor_info2.pose.pose.position.y]          
        #rospy.loginfo('distance : %f' % (math.sqrt(sum((px - qx) ** 2.0 for px, qx in zip(cposition2, cposition1)))*100))
        self.pub.publish(twist_end)
        if success:
            self._result.current_distance = int(current_distance)
            self._result.status = "succeeded"
            self._result.request_id = goal.request_id
            rospy.loginfo('%s: Succeeded' % self._action_name)
            self._as.set_succeeded(self._result) 
        
if __name__ == '__main__':
    rospy.init_node('burger_move')
    server = BurgerMoveAction(rospy.get_name())
    rospy.spin()

