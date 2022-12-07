#!/usr/bin/python



import roslib   
import rospy
import tf

if __name__ == "__main__":
    rospy.loginfo("TRANSFORM BROADCASTER WE WILL START THE NODE")
    rospy.init_node("static_transforms_broadcaster")
    rospy.loginfo("TRANSFORM BROADCASTER WE HAVE STARTED THE NODE, NOW CREATING BROADCASTER OBJECT")
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
                         rospy.get_param("~frames/robot_ar_frame")) # I don't know if the parameters to this quaternion are correct

        # Transform between robot's base and LiDAR
        rospy.loginfo("TRANSFORM BROADCASTER WE HAVE SENT THE FIRST TRANSFORM")
        br.sendTransform((0.0,0.0,0.0),
                         tf.transformations.quaternion_from_euler(0, 0, 1),
                         rospy.Time.now(),
                         "base_footprint",
                         "base_scan") # These are not stored on the parameter server
        rate.sleep()
