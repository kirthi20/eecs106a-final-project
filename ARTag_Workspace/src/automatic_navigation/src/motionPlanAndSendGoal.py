"""
For more information, ask Chetan. This code isn't currently interfacing with the main robot!
I'm working on motion planning. This is mostly sending code. Not much planning!
"""
# Basic imports
import rospy
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
# Actionlib imports
import actionlib
from actionlib_msgs.msg import *


## MAKE SURE TO LAUNCH AMCL_DEMO.LAUNCH ALSO!!! (In addition to minimal.launch)
# Remember we should have code to do 2D pose estimation also

class MotionPlanningAndSending():
    def main(self):
        # STAGE 1: We create the client node and the ActionClient
        rospy.init_node('/planning_client')

        # TODO: need to create a new map "on the fly"

        # We need to shut this node down if ROS is shutting down, i.e. perhaps tell the TurtleBot to stop moving
        #rospy.on_shutdown(self.shutdown)
        self.this_client = actionlib.SimpleActionClient("move_base", MoveBaseAction)
        # FOR MORE INFORMATION SEE http://docs.ros.org/en/fuerte/api/move_base_msgs/html/msg/MoveBaseAction.html

        # Wait for 3 seconds for the Action Client *server* to start up
        self.this_client.wait_for_server(rospy.Duration(3))

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