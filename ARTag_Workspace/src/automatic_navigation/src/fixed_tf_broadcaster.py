#!/usr/bin/python

import roslib   
import rospy
import tf

rospy.init_node('fixed_tf_broadcaster')
       br = tf.TransformBroadcaster()
       rate = rospy.Rate(10.0)
       while not rospy.is_shutdown():
           br.sendTransform((0.0, 0.0, 0.0),
                            (0.0, 0.0, 0.0, 1.0),
                            rospy.Time.now(),
                            "ar_marker_0",
                            rospy.get_param("~frames/sensor"))
           br.sendTransform((0.0, 0.0, 0.0),
                            (0.0, 0.0, 0.0, 1.0),
                            rospy.Time.now(),
                            rospy.get_param("~frames/base_footprint"),
                            rospy.get_param("~frames/base_scan"))
           rate.sleep()
