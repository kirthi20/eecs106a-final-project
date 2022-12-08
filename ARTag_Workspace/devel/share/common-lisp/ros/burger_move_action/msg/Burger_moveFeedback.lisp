; Auto-generated. Do not edit!


(cl:in-package burger_move_action-msg)


;//! \htmlinclude Burger_moveFeedback.msg.html

(cl:defclass <Burger_moveFeedback> (roslisp-msg-protocol:ros-message)
  ((step_distance
    :reader step_distance
    :initarg :step_distance
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (request_id
    :reader request_id
    :initarg :request_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Burger_moveFeedback (<Burger_moveFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Burger_moveFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Burger_moveFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name burger_move_action-msg:<Burger_moveFeedback> is deprecated: use burger_move_action-msg:Burger_moveFeedback instead.")))

(cl:ensure-generic-function 'step_distance-val :lambda-list '(m))
(cl:defmethod step_distance-val ((m <Burger_moveFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader burger_move_action-msg:step_distance-val is deprecated.  Use burger_move_action-msg:step_distance instead.")
  (step_distance m))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <Burger_moveFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader burger_move_action-msg:request_id-val is deprecated.  Use burger_move_action-msg:request_id instead.")
  (request_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Burger_moveFeedback>) ostream)
  "Serializes a message object of type '<Burger_moveFeedback>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'step_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'step_distance))
  (cl:let* ((signed (cl:slot-value msg 'request_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Burger_moveFeedback>) istream)
  "Deserializes a message object of type '<Burger_moveFeedback>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'step_distance) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'step_distance)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Burger_moveFeedback>)))
  "Returns string type for a message object of type '<Burger_moveFeedback>"
  "burger_move_action/Burger_moveFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Burger_moveFeedback)))
  "Returns string type for a message object of type 'Burger_moveFeedback"
  "burger_move_action/Burger_moveFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Burger_moveFeedback>)))
  "Returns md5sum for a message object of type '<Burger_moveFeedback>"
  "8e6f64e714e98d3c4b20d9309a22a790")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Burger_moveFeedback)))
  "Returns md5sum for a message object of type 'Burger_moveFeedback"
  "8e6f64e714e98d3c4b20d9309a22a790")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Burger_moveFeedback>)))
  "Returns full string definition for message of type '<Burger_moveFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%int32[] step_distance~%int32 request_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Burger_moveFeedback)))
  "Returns full string definition for message of type 'Burger_moveFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%int32[] step_distance~%int32 request_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Burger_moveFeedback>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'step_distance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Burger_moveFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'Burger_moveFeedback
    (cl:cons ':step_distance (step_distance msg))
    (cl:cons ':request_id (request_id msg))
))
