; Auto-generated. Do not edit!


(cl:in-package turtlebot_action_server-msg)


;//! \htmlinclude burger_moveResult.msg.html

(cl:defclass <burger_moveResult> (roslisp-msg-protocol:ros-message)
  ((current_distance
    :reader current_distance
    :initarg :current_distance
    :type cl:integer
    :initform 0)
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (request_id
    :reader request_id
    :initarg :request_id
    :type cl:integer
    :initform 0))
)

(cl:defclass burger_moveResult (<burger_moveResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <burger_moveResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'burger_moveResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name turtlebot_action_server-msg:<burger_moveResult> is deprecated: use turtlebot_action_server-msg:burger_moveResult instead.")))

(cl:ensure-generic-function 'current_distance-val :lambda-list '(m))
(cl:defmethod current_distance-val ((m <burger_moveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_action_server-msg:current_distance-val is deprecated.  Use turtlebot_action_server-msg:current_distance instead.")
  (current_distance m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <burger_moveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_action_server-msg:status-val is deprecated.  Use turtlebot_action_server-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <burger_moveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader turtlebot_action_server-msg:request_id-val is deprecated.  Use turtlebot_action_server-msg:request_id instead.")
  (request_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <burger_moveResult>) ostream)
  "Serializes a message object of type '<burger_moveResult>"
  (cl:let* ((signed (cl:slot-value msg 'current_distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let* ((signed (cl:slot-value msg 'request_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <burger_moveResult>) istream)
  "Deserializes a message object of type '<burger_moveResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<burger_moveResult>)))
  "Returns string type for a message object of type '<burger_moveResult>"
  "turtlebot_action_server/burger_moveResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'burger_moveResult)))
  "Returns string type for a message object of type 'burger_moveResult"
  "turtlebot_action_server/burger_moveResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<burger_moveResult>)))
  "Returns md5sum for a message object of type '<burger_moveResult>"
  "9437765222ca81189f828d9e84428a38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'burger_moveResult)))
  "Returns md5sum for a message object of type 'burger_moveResult"
  "9437765222ca81189f828d9e84428a38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<burger_moveResult>)))
  "Returns full string definition for message of type '<burger_moveResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%int32 current_distance~%string status~%int32 request_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'burger_moveResult)))
  "Returns full string definition for message of type 'burger_moveResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%int32 current_distance~%string status~%int32 request_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <burger_moveResult>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'status))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <burger_moveResult>))
  "Converts a ROS message object to a list"
  (cl:list 'burger_moveResult
    (cl:cons ':current_distance (current_distance msg))
    (cl:cons ':status (status msg))
    (cl:cons ':request_id (request_id msg))
))
