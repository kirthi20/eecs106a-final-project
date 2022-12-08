# turtlebot3-move-action

This project controls the movement of a turtlebot3 burger using action mechanisms. 

## Action server

To do this we have created an action server that expects a control command of the type {distance (integer), direction (string (old: std_msgs/String))}. In the case of a straight line displacement, direction can take as value forward or backward and distance corresponds to the length of the displacement in centimeters.  In the case of a rotation displacement, direction can take as value left or right and distance corresponds to the rotation angle in radian*100.  
In case of two successive actions, the second action interrupts the first action. 

## Action client

We have also implemented two clients to address the server. A first test client that just sends a move action. A second client that controls the turtlebot3 burger with the keyboard (w for in front, x for behind, a for left, d for right and s to interrupt the move). The second client does not wait for the action server to respond before listening for a new input, which allows to interrupt desired actions.

```
rostopic pub -1 /burger_move/cancel actionlib_msgs/GoalID "stamp:
  secs: 0
  nsecs: 0
id: ''
"
```

```
[old] rostopic pub -1 /burger_move/goal burger_move_action/Burger_moveActionGoal "header:
  seq: 0
  stamp:
    secs: 0
    nsecs: 0
  frame_id: ''
goal_id:
  stamp:
    secs: 0
    nsecs: 0
  id: ''
goal:
  distance: 314
  direction: 
    data: 'left'
"
```
```
rostopic pub -1 /burger_move/goal burger_move_action/Burger_moveActionGoal "header:
  seq: 0
  stamp:
    secs: 0
    nsecs: 0
  frame_id: ''
goal_id:
  stamp:
    secs: 0
    nsecs: 0
  id: ''
goal:
  distance: 314
  direction: 'left'
"
```

## How to launch the modules

+ Launch roscore
```
(remote PC)> roscore
```
+ Launch robot (real or simulated)
```
(remote PC)> roslaunch turtlebot3_gazebo turtlebot3_empty_world.launch
or
(burger)>  roslaunch turtlebot3_bringup turtlebot3_robot.launch
```
+ Launch action server
```
(remote PC)> rosrun burger_move_action burger_move_server.py
or
(remote PC)> rosrun burger_move_action burger_move_server_time.py
```
+ Launch action client 
```
(remote PC)> rosrun burger_move_action burger_move_client.py
or
(remote PC)> rosrun burger_move_action burger_move_clientkeyboard.py
```
+ Launch avoid obstacle client 
```
(remote PC)> rosrun burger_move_action burger_avoid_obstacle_client.py
```
+ To use with multi-robots, specify ROS_NAMESPACE of the turtlebot3_robot
```
(remote PC)> ROS_NAMESPACE=robot_name rosrun burger_move_action burger_move_server_time.py
```