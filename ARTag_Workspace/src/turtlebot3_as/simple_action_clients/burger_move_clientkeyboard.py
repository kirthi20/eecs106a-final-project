#! /usr/bin/env python

import rospy

# Brings in the SimpleActionClient
import actionlib
#import keyboard
#from pynput.keyboard import Listener
import sys, select, os
if os.name == 'nt':
  import msvcrt
else:
  import tty, termios
# Brings in the messages used by the fibonacci action, including the
# goal message and the result message.
import burger_move_action.msg

msg = """
Control Your TurtleBot3!
---------------------------
Moving around:
        w
   a    s    d
        x
"""

def getKey():
    if os.name == 'nt':
      return msvcrt.getch()

    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''

    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

def burger_move_client(actionserver,name):
    # Creates the SimpleActionClient, passing the type of the action
    # (FibonacciAction) to the constructor.
    global client
    client = actionlib.SimpleActionClient(actionserver+name, burger_move_action.msg.Burger_moveAction)

    if os.name != 'nt':
        settings = termios.tcgetattr(sys.stdin)    
    # Waits until the action server has started up and started
    # listening for goals.
    client.wait_for_server()
    rospy.loginfo('Connected to action server'+actionserver+name)
    print(msg)

# def on_press(key):  # The function that's called when a key is released
#     goal = burger_move_action.msg.Burger_moveGoal()
#     if hasattr(key, 'char'):
#         touchkey = format(key.char)
#         if touchkey == "w":
#             # Creates a goal to send to the action server.
#             goal.distance=30            
#             goal.direction = "forward"
#             # Sends the goal to the action server.
#             client.send_goal(goal)
#             # Waits for the server to finish performing the action.
#             #client.wait_for_result()
#             # Prints out the result of executing the action
#             #result = client.get_result()  # A FibonacciResult
#             #rospy.loginfo('burger_move_client_py : Result %i' %(result.current_distance))
#         elif touchkey == "x":
#             # Creates a goal to send to the action server.
#             goal.distance=30
#             goal.direction = "backward"
#             # Sends the goal to the action server.
#             client.send_goal(goal)
#             # Waits for the server to finish performing the action.
#             #client.wait_for_result()
#             # Prints out the result of executing the action
#             #result = client.get_result()  # A FibonacciResult
#             #rospy.loginfo('burger_move_client_py : Result %i' %(result.current_distance))
#         elif touchkey == "a":
#             # Creates a goal to send to the action server.
#             goal.distance=155
#             goal.direction = "left"
#             # Sends the goal to the action server.
#             client.send_goal(goal)
#             # Waits for the server to finish performing the action.
#             #client.wait_for_result()
#             # Prints out the result of executing the action
#             #result = client.get_result()  # A FibonacciResult
#             #rospy.loginfo('burger_move_client_py : Result %i' %(result.current_distance))
#         elif touchkey == "d":
#             # Creates a goal to send to the action server.
#             goal.distance=155
#             goal.direction = "right"
#             # Sends the goal to the action server.
#             client.send_goal(goal)
#             # Waits for the server to finish performing the action.
#             #client.wait_for_result()
#             # Prints out the result of executing the action
#             #result = client.get_result()  # A FibonacciResult
#             #rospy.loginfo('burger_move_client_py : Result %i' %(result.current_distance))
#         elif touchkey == "s":
#             # cancel action
#             client.cancel_goal()
#             rospy.loginfo('Burger status %s' %( client.get_state()))
#     else :
#         rospy.loginfo('Leave burger keyboard control')
#         exit()

def on_press(key):  # The function that's called when a key is released
    goal = burger_move_action.msg.Burger_moveGoal()
    if key == "w":
        goal.distance=30            
        goal.direction = "forward"
        client.send_goal(goal)
        #rospy.loginfo('burger_move_client_py : Result %i' %(result.current_distance))
    elif key == "x":
        goal.distance=30
        goal.direction = "backward"
        client.send_goal(goal)
        #rospy.loginfo('burger_move_client_py : Result %i' %(result.current_distance))
    elif key == "a":
        goal.distance=155
        goal.direction = "left"
        client.send_goal(goal)
        #rospy.loginfo('burger_move_client_py : Result %i' %(result.current_distance))
    elif key == "d":
        goal.distance=155
        goal.direction = "right"
        client.send_goal(goal)
        #rospy.loginfo('burger_move_client_py : Result %i' %(result.current_distance))
    elif key == "s" or key == ' ':
        #client.cancel_goal()
        client.cancel_all_goals()
        rospy.loginfo('Burger status %s' %( client.get_state()))
    else :
        if (key == '\x03'):
            rospy.loginfo('Leave burger keyboard control')
            exit()

if __name__ == '__main__':
    robot_name = ''
    if os.name != 'nt':
        settings = termios.tcgetattr(sys.stdin)
    try:
        # Initializes a rospy node so that the SimpleActionClient can
        # publish and subscribe over ROS.
        rospy.init_node('burger_move_clientkeyboard_py'+robot_name)
        burger_move_client('burger_move',robot_name)   
        while(1):
            key = getKey()
            on_press(key)
        #with Listener(on_press=on_press) as listener:  # Setup the listener
        #    listener.join()
    except rospy.ROSInterruptException:
        rospy.loginfo('program interrupted before completion')
    if os.name != 'nt':
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)

        
