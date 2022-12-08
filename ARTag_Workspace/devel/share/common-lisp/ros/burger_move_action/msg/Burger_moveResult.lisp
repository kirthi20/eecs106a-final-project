; Auto-generated. Do not edit!


(cl:in-package burger_move_action-msg)


;//! \htmlinclude Burger_moveResult.msg.html

(cl:defclass <Burger_moveResult> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Burger_moveResult (<Burger_moveResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Burger_moveResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Burger_moveResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name burger_move_action-msg:<Burger_moveResult> is deprecated: use burger_move_action-msg:Burger_moveResult instead.")))

(cl:ensure-generic-function 'current_distance-val :lambda-list '(m))
(cl:defmethod current_distance-val ((m <Burger_moveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader burger_move_action-msg:current_distance-val is deprecated.  Use burger_move_action-msg:current_distance instead.")
  (current_distance m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Burger_moveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader burger_move_action-msg:status-val is deprecated.  Use burger_move_action-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <Burger_moveResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader burger_move_action-msg:request_id-val is deprecated.  Use burger_move_action-msg:request_id instead.")
  (request_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Burger_moveResult>) ostream)
  "Serializes a message object of type '<Burger_moveResult>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Burger_moveResult>) istream)
  "Deserializes a message object of type '<Burger_moveResult>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Burger_moveResult>)))
  "Returns string type for a message object of type '<Burger_moveResult>"
  "burger_move_action/Burger_moveResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Burger_moveResult)))
  "Returns string type for a message object of type 'Burger_moveResult"
  "burger_move_action/Burger_moveResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Burger_moveResult>)))
  "Returns md5sum for a message object of type '<Burger_moveResult>"
  "9437765222ca81189f828d9e84428a38")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Burger_moveResult)))
  "Returns md5sum for a message object of type 'Burger_moveResult"
  "9437765222ca81189f828d9e84428a38")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Burger_moveResult>)))
  "Returns full string definition for message of type '<Burger_moveResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%int32 current_distance~%string status~%int32 request_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Burger_moveResult)))
  "Returns full string definition for message of type 'Burger_moveResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%int32 current_distance~%string status~%int32 request_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Burger_moveResult>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'status))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Burger_moveResult>))
  "Converts a ROS message object to a list"
  (cl:list 'Burger_moveResult
    (cl:cons ':current_distance (current_distance msg))
    (cl:cons ':status (status msg))
    (cl:cons ':request_id (request_id msg))
))
