#! /usr/bin/env python

import rospy

# Brings in the SimpleActionClient
import actionlib
# Brings in the messages used by the fibonacci action, including the
# goal message and the result message.
import burger_move_action.msg

def burger_move_client():
    # Creates the SimpleActionClient, passing the type of the action
    # (FibonacciAction) to the constructor.
    client = actionlib.SimpleActionClient('burger_move', burger_move_action.msg.Burger_moveAction)

    # Waits until the action server has started up and started
    # listening for goals.
    client.wait_for_server()

    # Creates a goal to send to the action server.
    goal = burger_move_action.msg.Burger_moveGoal()

    goal.distance=30
    goal.direction = "forward"

    # Sends the goal to the action server.
    client.send_goal(goal)

    # Waits for the server to finish performing the action.
    client.wait_for_result()

    # Prints out the result of executing the action
    return client.get_result()  # A FibonacciResult

if __name__ == '__main__':
    try:
        # Initializes a rospy node so that the SimpleActionClient can
        # publish and subscribe over ROS.
        rospy.init_node('burger_move_client_py')
        result = burger_move_client()
        rospy.loginfo('burger_move_client_py : Result %i' %(result.current_distance))
    except rospy.ROSInterruptException:
        rospy.loginfo('program interrupted before completion')
        
