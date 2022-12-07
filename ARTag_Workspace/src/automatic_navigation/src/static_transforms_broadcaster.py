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
        br.sendTransform((0.0, 0.0, 0.0),
                    (0.0, 0.0, 0.0, 1.0),
                    rospy.Time.now(),
                    rospy.get_param("~frames/goal_ar_frame"),
                    rospy.get_param("~frames/base_footprint")) # CONFIRM CORRECT DIRECTION FOR TRANSFORM
        rospy.loginfo("TRANSFORM BROADCASTER WE HAVE SENT THE FIRST TRANSFORM")
        br.sendTransform((0.0, 0.0, 0.0),
                    (0.0, 0.0, 0.0, 1.0),
                    rospy.Time.now(),
                    rospy.get_param("~frames/base_footprint"),
                    rospy.get_param("~frames/base_scan"))
        rospy.loginfo("TRANSFORM BROADCASTER WE HAVE SENT ****BOTH**** TRANSFORMS")
        rate.sleep()
