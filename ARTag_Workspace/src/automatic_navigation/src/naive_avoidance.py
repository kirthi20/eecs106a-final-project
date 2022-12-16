#!/usr/bin/env python
#The line above tells Linux that this file is a Python script,
#and that the OS should use the Python interpreter in /usr/bin/env
#to run it. Don't forget to use "chmod +x [filename]" to make
#this script executable.

# NOTE : This was adapted from the naive obstacle avoider found at https://github.com/Rad-hi/Obstacle-Avoidance-ROS


#Import the rospy package. For an import to work, it must be specified
#in both the package manifest AND the Python file in which it is used.
import rospy
import tf2_ros
import sys

from sensor_msgs.msg import LaserScan 
from geometry_msgs.msg import Twist, Vector3

# Distance threshold for stopping the Turtlebot
threshold_distance1 = 0.17 # X Distance
threshold_distance2 = 0.1 # Theta Distance


class Naive_Avoider():
  ''' This class provides simple obstacle avoidance functionalities to a ROS robot '''

  # This dict keeps track of the distance measures for each region
  Regions_Report = {
                       "front_C": [], "front_L": [], "left_R" : [],
                       "left_C" : [], "left_L" : [], "back_R" : [],
                       "back_C" : [], "back_L" : [], "right_R": [],
                       "right_C": [], "right_L": [], "front_R": [],
                   }
  # These are the costs to deviate from each region to the goal region (front_C)
  Regions_Distances = {
                       "front_C":  0, "front_L":  1, "left_R" :  2,
                       "left_C" :  3, "left_L" :  4, "back_R" :  5,
                       "back_C" :  6, "back_L" : -5, "right_R": -4,
                       "right_C": -3, "right_L": -2, "front_R": -1,
                    }

  def __init__(self, vel_obj, obstacle_threshold=0.45, 
               regional_angle=30, normal_lin_vel=0.1, 
               trans_lin_vel=-0.04, trans_ang_vel=1.00):
    '''
    :param vel_obj           : Velocity object; will contain velocity commands(data); Twist()
    :param obstacle_threshold: Objects a this distance or below are considered obstacles
    :param regional_angle    : The angle on which each region extends
    :param normal_lin_vel    : When there's no obstacles, the robot will move with this linear velocity
    :param trans_lin_vel     : After detecting an obstacle, the robot will back up (negative) 
                   while rotating to help in case it can't perform a stationary rotation
    :param trans_ang_vel   : The robot always rotates with the same value of angular velocity
    '''
    self.vel_obj        = vel_obj
    self.OBSTACLE_DIST  = obstacle_threshold
    self.REGIONAL_ANGLE = regional_angle
    self.NORMAL_LIN_VEL = normal_lin_vel
    self.TRANS_LIN_VEL  = trans_lin_vel
    self.TRANS_ANG_VEL  = trans_ang_vel

  def indentify_regions(self, scan):
    '''
    :param scan: Scan object that contains the lidar data 
    '''

    # This list keeps track of the order in which the regions' readings are obtained
    REGIONS = [
                 "front_C", "front_L", "left_R" ,
                 "left_C" , "left_L" , "back_R" ,
                 "back_C" , "back_L" , "right_R",
                 "right_C", "right_L", "front_R",
          ]

    # The front central region necessitate getting the last and first 15 points of the ranges
    intermediary = scan.ranges[:int(self.REGIONAL_ANGLE/2)]\
           + scan.ranges[(len(scan.ranges)-1)*int(self.REGIONAL_ANGLE/2):]
    self.Regions_Report["front_C"] = [x for x in intermediary if x <= self.OBSTACLE_DIST and x != 'inf' and x > 0]
    
    # Enumerate all regions but the first
    for i, region in enumerate(REGIONS[1:]):
      # Only objects at a distance less than or equal to the threshold are considered obstacles
      self.Regions_Report[region] = [x for x in scan.ranges[self.REGIONAL_ANGLE*i:self.REGIONAL_ANGLE*(i+1)]\
                           if x <= self.OBSTACLE_DIST and x != 'inf' and x > 0]

  def avoid(self):
    act, ang_vel = self._clearance_test()
    # If act is False, ang_vel is set to 0
    self._steer(act, (act*ang_vel))
    return self.vel_obj

  def _clearance_test(self):

    goal = "front_C"
    closest = 10e6
    regional_dist = 0
    maxima = {"destination": "back_C", "distance": 10e-6}
    for region in self.Regions_Report.items():
      regional_dist = abs(self.Regions_Distances[region[0]]-self.Regions_Distances[goal])
      #if there're no obstacles in that region
      if not len(region[1]):
        #check if it's the cheapest option
        if (regional_dist < closest):
          closest = regional_dist
          maxima["distance"] = self.OBSTACLE_DIST
          maxima["destination"] = region[0]
      #check if it's the clearest option
      elif(max(region[1]) > maxima["distance"]):
        maxima["distance"] = max(region[1])
        maxima["destination"] = region[0]
    #calculate the cost to the chosen orientation
    regional_dist = self.Regions_Distances[maxima["destination"]]-self.Regions_Distances[goal]
    
    # Return whether to act or not, and the angular velocity with the appropriate sign
    return (closest != 0), (regional_dist/[abs(regional_dist) if regional_dist != 0 else 1][0])*self.TRANS_ANG_VEL

  def _steer(self, steer=False, ang_vel=0):
    '''
    :param steer  : Whether to avoid an obstacle or keep on going straight
    :param ang_vel: The angular velocity of the robot
    '''
    if not steer:
      self.vel_obj.linear.x = self.NORMAL_LIN_VEL
    else:
      self.vel_obj.linear.x = self.TRANS_LIN_VEL
    self.vel_obj.linear.y  = 0
    self.vel_obj.linear.z  = 0
    self.vel_obj.angular.x = 0
    self.vel_obj.angular.y = 0
    self.vel_obj.angular.z = ang_vel


############# CONTROLLER #############################


#Define the method which contains the main functionality of the node.
def controller(turtlebot_frame, goal_frame):
  """
  Controls a turtlebot whose position is denoted by turtlebot_frame,
  to go to a position denoted by target_frame
  Inputs:
  - turtlebot_frame: the tf frame of the AR tag on your turtlebot
  - target_frame: the tf frame of the target AR tag
  """

  ################################### YOUR CODE HERE ##############

  #Create a publisher and a tf buffer, which is primed with a tf listener
  pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
  tfBuffer = tf2_ros.Buffer()
  tfListener = tf2_ros.TransformListener(tfBuffer)
  
  # Create a timer object that will sleep long enough to result in
  # a 10Hz publishing rate
  r = rospy.Rate(10) # 10hz

  K1 = -0.1
  K2 = -1.5

  # Initialize naive obstacle avoider
  velocity_obj = Twist()
  naive_avoider = Naive_Avoider(velocity_obj)
  rospy.Subscriber("/scan", LaserScan, naive_avoider.indentify_regions)
  print(turtlebot_frame, goal_frame)

  # Boolean variable for moving out of the way of obstacles
  just_avoided = False
  timer_made = -1


  # Loop until the node is killed with Ctrl-C
  while not rospy.is_shutdown():
    
    try:

      # If the avoider detects an obstacle, then run obstacle avoidance otherwise charge towards the goal
      act, ang_vel = naive_avoider._clearance_test()
      
      if act:
        print("Avoiding obstacle")
        vel = naive_avoider.avoid()
        pub.publish(vel)
        just_avoided = True
        timer_made = rospy.get_time() + 1.5

      else:
      
        # If just turned away from an obstacle, move forward for a bit
        if just_avoided:
          if timer_made != -1 and rospy.get_time() > timer_made:
            just_avoided = False
            timer_made = -1
          print("Moving out of the way")
          control_command = Twist(Vector3(0.10, 0, 0), Vector3(0, 0, 0)) 
          pub.publish(control_command)
        else:
          print("Heading for goal")
          # Use tfbuffer to find the transform between turtlebot and target
          trans = tfBuffer.lookup_transform(turtlebot_frame, goal_frame, rospy.Time())

          # Distance from turtlebot to target
          distance1 = trans.transform.translation.x # NOTE : Originally was Z 
          distance2 = trans.transform.translation.y
          print(distance1)
          #print(distance2)

          # If distance is below our threshold, stop running
          if abs(distance1) < threshold_distance1 and abs(distance2) < threshold_distance2:
            break

          # Process trans to get your state error
          velocity = K1 * distance1
          theta = K2 * distance2

          # Generate a control command to send to the robot
          #velocity = abs(velocity) # HARDCODED always go forward 
          control_command = Twist(Vector3(velocity, 0, 0), Vector3(0, 0, theta)) 
          pub.publish(control_command)

    except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
      pass
    # Use our rate object to sleep until it is time to publish again
    r.sleep()

def waitForKeyPress():
  input("Flyer delivered! Press key to return home")
  pass


def pureAvoidance():
    vel = Twist()
    # Instanciate our avoider object
    avoider = Naive_Avoider(vel)
    # Initialize our node
    rospy.init_node("Laser_Obs_Avoid_node")
    # Subscribe to the "/scan" topic in order to read laser scans data from it
    rospy.Subscriber("/scan", LaserScan, avoider.indentify_regions)
    #create our publisher that'll publish to the "/cmd_vel" topic
    pub = rospy.Publisher("/cmd_vel", Twist, queue_size = 1)
    #ros will try to run this code 10 times/second
    rate = rospy.Rate(10) #10Hz
    
    #keep running while the ros-master isn't shutdown
    while not rospy.is_shutdown():
        print(avoider.Regions_Report)
        vel = avoider.avoid()
        pub.publish(vel)
        rate.sleep()


# This is Python's sytax for a main() method, which is run by default
# when exectued in the shell
if __name__ == '__main__':
  
  #pureAvoidance()
  
  #Run this program as a new node in the ROS computation graph called /turtlebot_controller.
  rospy.init_node('turtlebot_controller', anonymous=True)

  try:
    controller("ar_marker_14", "ar_marker_15")
  except rospy.ROSInterruptException as err:
    rospy.logerr(err)
    pass

  print("goal reached!")

  #waitForKeyPress()
  
  #try:
  #  controller("ar_marker_0", "ar_marker_8")
  #except:
  #  pass
  