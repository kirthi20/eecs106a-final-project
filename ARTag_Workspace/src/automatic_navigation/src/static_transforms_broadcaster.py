#!/usr/bin/python



import roslib   
import rospy
import tf2_ros
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
    while not transFound:
        tfBuffer = tf2_ros.Buffer()
        tfListener = tf2_ros.TransformListener(tfBuffer)
        try:
            startOdomCameraTrans = tfBuffer.lookup_transform(rospy.get_param("~frames/robot_ar_frame"), "camera_link", rospy.Time())
            transFound = True
        except (tf2_ros.LookupException, tf2_ros.ConnectivityException, tf2_ros.ExtrapolationException):
            rospy.logwarn("No information from TF2")
            rate.sleep()

    while not rospy.is_shutdown():
        rospy.loginfo("TRANSFORM BROADCASTER WE ****WILL**** SEND THE FIRST TRANSFORM")
        if startOdomCameraTrans == None:
            rospy.logerr("No beginning odom transformation.")
        # Transform between Robot AR frame and the camera
        startOdomCameraTransStamped = geometry_msgs.msg.TransformStamped()
        startOdomCameraTransStamped.header.stamp = rospy.Time.now()
        startOdomCameraTransStamped.header.frame_id = "camera_link"
        startOdomCameraTransStamped.child_frame_id = "odom"
        startOdomCameraTransStamped.transform = startOdomCameraTrans


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
        identityTransStamped.transform.translation = (0.0,0.0,0.0)
        identityTransStamped.transform.rotation = tf2_ros.transformations.quaternion_from_euler(0, 0, 1)
        br.sendTransform(identityTransStamped) # These are not stored on the parameter server

        # Static transform between odom and camera_link
        # br.sendTransform((0.0,1.0,0.0),
        #                 tf.transformations.quaternion_from_euler(0, 0, 1),
        #                 rospy.Time.now(),
        #                 "odom",
        #                 "camera_link") # I don't know if the parameters to this quaternion are correct
        rate.sleep()
