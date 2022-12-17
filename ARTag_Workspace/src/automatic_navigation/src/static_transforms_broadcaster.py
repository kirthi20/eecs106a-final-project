#!/usr/bin/python



import roslib   
import rospy
import tf2_ros
import tf
from geometry_msgs.msg import Point
import numpy as np
import geometry_msgs.msg 

if __name__ == "__main__":
    rospy.loginfo("Transform broadcaster: Node starting")
    rospy.init_node("static_transforms_broadcaster")
    rospy.loginfo("Transform broadcaster: initializing broadcaster object")
    br = tf2_ros.StaticTransformBroadcaster()
    rospy.loginfo("TRANSFORM BROADCASTER WE HAVE CREATED THE BROADCASTER OBJECT")
    rate = rospy.Rate(10.0)

    # Setup transform between odom and camera_link based on transform with ar_marker_0
    transFound = False
    global startOdomCameraTrans
    startOdomCameraTrans = None
    tfBuffer = tf2_ros.Buffer()
    tfListener = tf2_ros.TransformListener(tfBuffer)
    while not transFound:

        # try:
        #     startOdomCameraTrans = tfBuffer.lookup_transform("camera_link", rospy.get_param("~frames/robot_ar_frame"), rospy.Time.now())
        #     transFound = True
        # except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException) as err:
        #     rospy.logwarn(err)
        #     rate.sleep()

        #fListener.waitForTransform("camera_link", rospy.get_param("~frames/robot_ar_frame"), rospy.Time(), rospy.Duration(4.0))
        
        #transFound = canTransform("camera_link", rospy.get_param("~frames/robot_ar_frame"), rospy.Time.now(), rospy.Duration(4.0), "can't transform :(")
        
        try:
            now = rospy.Time.now()
        #    tfListener.waitForTransform("camera_link", rospy.get_param("~frames/robot_ar_frame"), now, rospy.Duration(4.0))
            startOdomCameraTrans = tfBuffer.lookup_transform("camera_link", rospy.get_param("~frames/robot_ar_frame"), rospy.Time(0))
            transFound = True
        except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException) as err:
            rospy.logwarn(err)
            rate.sleep()

        # try:
        #     now = rospy.Time.now()
        # #    tfListener.waitForTransform("camera_link", rospy.get_param("~frames/robot_ar_frame"), now, rospy.Duration(4.0))
        #     startOdomCameraTrans = tfBuffer.lookup_transform("base_footprint", "odom", rospy.Time(0))
        #     transFound = True
        # except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException) as err:
        #     rospy.logwarn(err)
        #     rate.sleep()


    while not rospy.is_shutdown():
        rospy.loginfo("TRANSFORM BROADCASTER WE ****WILL**** SEND THE FIRST TRANSFORM")
        if startOdomCameraTrans == None:
            rospy.logerr("No beginning odom transformation.")
        # Transform between Robot AR frame and the camera
        startOdomCameraTransStamped = geometry_msgs.msg.TransformStamped()
        startOdomCameraTransStamped.header.stamp = rospy.Time.now()
        startOdomCameraTransStamped.header.frame_id = "camera_link"
        startOdomCameraTransStamped.child_frame_id = "odom"
        euler = tf.transformations.euler_from_quaternion(startOdomCameraTrans.transform.rotation)
        # Rotate odom counter-clockwise 90 degrees
        #startOdomCameraTransStamped.transform.rotation = tf.transformations.quaternion_multiply(startOdomCameraTransStamped.transform.rotation, tf.transformations.quaternion_from_euler(0.0, np.pi / 2, 0.0))
        #startOdomCameraTransStamped.transform.rotatation = tf.transformations.quaternion_from_euler(0.0, -(np.pi/2), 0.0)
        #startOdomCameraTransStamped.transform.translation = startOdomCameraTrans.transform.translation
        
        startOdomCameraTransStamped.transform = startOdomCameraTrans.transform
        #startOdomCameraTransStamped.transform.translation = startOdomCameraTrans.translation
        


        br.sendTransform(startOdomCameraTransStamped)

        # Transform between Robot AR frame and Base
        # br.sendTransform((0.0,0.0,0.0),
        #                  tf.transformations.quaternion_from_euler(0, 0, 1),
        #                  rospy.Time.now(),
        #                  "base_footprint",
        #                  "camera_link") # I don't know if the parameters to this quaternion are correct

        # Transform between robot's base and LiDAR
        rospy.loginfo("TRANSFORM BROADCASTER WE HAVE SENT THE FIRST TRANSFORM")
        identityTransStamped = geometry_msgs.msg.TransformStamped()
        identityTransStamped.header.stamp = rospy.Time.now()
        identityTransStamped.header.frame_id = "base_footprint"
        identityTransStamped.child_frame_id = "base_scan"
        #identityTransStamped.transform.translation = Point(0.0, 0.0, 0.0)
        identityTransStamped.transform.translation.x = float(0.0)
        identityTransStamped.transform.translation.y = float(0.0)
        identityTransStamped.transform.translation.z = float(0.0)
        thisQuaternion = tf.transformations.quaternion_from_euler(0.0, 0.0, 0.0)
        identityTransStamped.transform.rotation.x = thisQuaternion[0]
        identityTransStamped.transform.rotation.y = thisQuaternion[1]
        identityTransStamped.transform.rotation.z = thisQuaternion[2]
        identityTransStamped.transform.rotation.w = thisQuaternion[3] 
        br.sendTransform(identityTransStamped) # These are not stored on the parameter server

        # Static transform between odom and camera_link
        # br.sendTransform((0.0,1.0,0.0),
        #                 tf.transformations.quaternion_from_euler(0, 0, 1),
        #                 rospy.Time.now(),
        #                 "odom",
        #                 "camera_link") # I don't know if the parameters to this quaternion are correct
        rate.sleep()
