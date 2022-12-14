;; Auto-generated. Do not edit!


(when (boundp 'turtlebot_action_server::burger_moveResult)
  (if (not (find-package "TURTLEBOT_ACTION_SERVER"))
    (make-package "TURTLEBOT_ACTION_SERVER"))
  (shadow 'burger_moveResult (find-package "TURTLEBOT_ACTION_SERVER")))
(unless (find-package "TURTLEBOT_ACTION_SERVER::BURGER_MOVERESULT")
  (make-package "TURTLEBOT_ACTION_SERVER::BURGER_MOVERESULT"))

(in-package "ROS")
;;//! \htmlinclude burger_moveResult.msg.html


(defclass turtlebot_action_server::burger_moveResult
  :super ros::object
  :slots (_current_distance _status _request_id ))

(defmethod turtlebot_action_server::burger_moveResult
  (:init
   (&key
    ((:current_distance __current_distance) 0)
    ((:status __status) "")
    ((:request_id __request_id) 0)
    )
   (send-super :init)
   (setq _current_distance (round __current_distance))
   (setq _status (string __status))
   (setq _request_id (round __request_id))
   self)
  (:current_distance
   (&optional __current_distance)
   (if __current_distance (setq _current_distance __current_distance)) _current_distance)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:serialization-length
   ()
   (+
    ;; int32 _current_distance
    4
    ;; string _status
    4 (length _status)
    ;; int32 _request_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _current_distance
       (write-long _current_distance s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; int32 _request_id
       (write-long _request_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _current_distance
     (setq _current_distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _request_id
     (setq _request_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get turtlebot_action_server::burger_moveResult :md5sum-) "9437765222ca81189f828d9e84428a38")
(setf (get turtlebot_action_server::burger_moveResult :datatype-) "turtlebot_action_server/burger_moveResult")
(setf (get turtlebot_action_server::burger_moveResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result definition
int32 current_distance
string status
int32 request_id

")



(provide :turtlebot_action_server/burger_moveResult "9437765222ca81189f828d9e84428a38")


