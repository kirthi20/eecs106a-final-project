; Auto-generated. Do not edit!


(cl:in-package turtlebot_action_server-msg)


;//! \htmlinclude burger_moveGoal.msg.html

(cl:defclass <burger_moveGoal> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform "")
   (request_id
    :reader request_id
    :initarg :request_id
    :type cl:integer
    :initform 0))
)

(cl:defclass burger_moveGoal (<burger_moveGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <burger_moveGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'burger_moveGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot_action_server-msg:<burger_moveGoal> is deprecated: use turtlebot_action_server-msg:burger_moveGoal instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <burger_moveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_action_server-msg:distance-val is deprecated.  Use turtlebot_action_server-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <burger_moveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_action_server-msg:direction-val is deprecated.  Use turtlebot_action_server-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <burger_moveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_action_server-msg:request_id-val is deprecated.  Use turtlebot_action_server-msg:request_id instead.")
  (request_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <burger_moveGoal>) ostream)
  "Serializes a message object of type '<burger_moveGoal>"
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
  (cl:let* ((signed (cl:slot-value msg 'request_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <burger_moveGoal>) istream)
  "Deserializes a message object of type '<burger_moveGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<burger_moveGoal>)))
  "Returns string type for a message object of type '<burger_moveGoal>"
  "turtlebot_action_server/burger_moveGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'burger_moveGoal)))
  "Returns string type for a message object of type 'burger_moveGoal"
  "turtlebot_action_server/burger_moveGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<burger_moveGoal>)))
  "Returns md5sum for a message object of type '<burger_moveGoal>"
  "1de0c91feefe3009e76de19337cbc8a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'burger_moveGoal)))
  "Returns md5sum for a message object of type 'burger_moveGoal"
  "1de0c91feefe3009e76de19337cbc8a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<burger_moveGoal>)))
  "Returns full string definition for message of type '<burger_moveGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%int32 distance~%string direction~%int32 request_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'burger_moveGoal)))
  "Returns full string definition for message of type 'burger_moveGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%int32 distance~%string direction~%int32 request_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <burger_moveGoal>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'direction))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <burger_moveGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'burger_moveGoal
    (cl:cons ':distance (distance msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':request_id (request_id msg))
))
