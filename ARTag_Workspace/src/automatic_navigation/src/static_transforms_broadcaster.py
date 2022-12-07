#!/usr/bin/python



import roslib   
import rospy
import tf

if __name__ == "__main__":
    rospy.loginfo("Transform broadcaster: Node starting")
    rospy.init_node("static_transforms_broadcaster")
    rospy.loginfo("Transform broadcaster: initializing broadcaster object")
    br = tf.TransformBroadcaster()
    rospy.loginfo("TRANSFORM BROADCASTER WE HAVE CREATED THE BROADCASTER OBJECT")
    rate = rospy.Rate(10.0)

    while not rospy.is_shutdown():
        rospy.loginfo("TRANSFORM BROADCASTER WE ****WILL**** SEND THE FIRST TRANSFORM")

        # Transform between Robot AR frame tag and Base
        br.sendTransform((0.0,0.0,0.0),
                         tf.transformations.quaternion_from_euler(0, 0, 1),
                         rospy.Time.now(),
                         "base_footprint",
                         "camera_link") # I don't know if the parameters to this quaternion are correct

        # Transform between robot's base and LiDAR
        rospy.loginfo("TRANSFORM BROADCASTER WE HAVE SENT THE FIRST TRANSFORM")
        br.sendTransform((0.0,0.0,0.0),
                         tf.transformations.quaternion_from_euler(0, 0, 1),
                         rospy.Time.now(),
                         "base_scan",
                         "base_footprint") # These are not stored on the parameter server

        # Static transform between odom and camera_link
        br.sendTransform((0.0,1.0,0.0),
                         tf.transformations.quaternion_from_euler(0, 0, 1),
                         rospy.Time.now(),
                         "odom",
                         "camera_link") # I don't know if the parameters to this quaternion are correct
        rate.sleep()
