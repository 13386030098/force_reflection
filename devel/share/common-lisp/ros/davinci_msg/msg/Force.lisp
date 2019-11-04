; Auto-generated. Do not edit!


(cl:in-package davinci_msg-msg)


;//! \htmlinclude Force.msg.html

(cl:defclass <Force> (roslisp-msg-protocol:ros-message)
  ((force_x
    :reader force_x
    :initarg :force_x
    :type cl:float
    :initform 0.0)
   (force_y
    :reader force_y
    :initarg :force_y
    :type cl:float
    :initform 0.0)
   (force_z
    :reader force_z
    :initarg :force_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass Force (<Force>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Force>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Force)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name davinci_msg-msg:<Force> is deprecated: use davinci_msg-msg:Force instead.")))

(cl:ensure-generic-function 'force_x-val :lambda-list '(m))
(cl:defmethod force_x-val ((m <Force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader davinci_msg-msg:force_x-val is deprecated.  Use davinci_msg-msg:force_x instead.")
  (force_x m))

(cl:ensure-generic-function 'force_y-val :lambda-list '(m))
(cl:defmethod force_y-val ((m <Force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader davinci_msg-msg:force_y-val is deprecated.  Use davinci_msg-msg:force_y instead.")
  (force_y m))

(cl:ensure-generic-function 'force_z-val :lambda-list '(m))
(cl:defmethod force_z-val ((m <Force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader davinci_msg-msg:force_z-val is deprecated.  Use davinci_msg-msg:force_z instead.")
  (force_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Force>) ostream)
  "Serializes a message object of type '<Force>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'force_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'force_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'force_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Force>) istream)
  "Deserializes a message object of type '<Force>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'force_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Force>)))
  "Returns string type for a message object of type '<Force>"
  "davinci_msg/Force")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Force)))
  "Returns string type for a message object of type 'Force"
  "davinci_msg/Force")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Force>)))
  "Returns md5sum for a message object of type '<Force>"
  "a3834bb22b09698ded602f23cb069ae6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Force)))
  "Returns md5sum for a message object of type 'Force"
  "a3834bb22b09698ded602f23cb069ae6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Force>)))
  "Returns full string definition for message of type '<Force>"
  (cl:format cl:nil "float64 force_x~%float64 force_y~%float64 force_z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Force)))
  "Returns full string definition for message of type 'Force"
  (cl:format cl:nil "float64 force_x~%float64 force_y~%float64 force_z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Force>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Force>))
  "Converts a ROS message object to a list"
  (cl:list 'Force
    (cl:cons ':force_x (force_x msg))
    (cl:cons ':force_y (force_y msg))
    (cl:cons ':force_z (force_z msg))
))
