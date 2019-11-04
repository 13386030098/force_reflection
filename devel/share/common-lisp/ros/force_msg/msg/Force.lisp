; Auto-generated. Do not edit!


(cl:in-package force_msg-msg)


;//! \htmlinclude Force.msg.html

(cl:defclass <Force> (roslisp-msg-protocol:ros-message)
  ((force_x
    :reader force_x
    :initarg :force_x
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (force_y
    :reader force_y
    :initarg :force_y
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (force_z
    :reader force_z
    :initarg :force_z
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Force (<Force>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Force>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Force)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name force_msg-msg:<Force> is deprecated: use force_msg-msg:Force instead.")))

(cl:ensure-generic-function 'force_x-val :lambda-list '(m))
(cl:defmethod force_x-val ((m <Force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader force_msg-msg:force_x-val is deprecated.  Use force_msg-msg:force_x instead.")
  (force_x m))

(cl:ensure-generic-function 'force_y-val :lambda-list '(m))
(cl:defmethod force_y-val ((m <Force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader force_msg-msg:force_y-val is deprecated.  Use force_msg-msg:force_y instead.")
  (force_y m))

(cl:ensure-generic-function 'force_z-val :lambda-list '(m))
(cl:defmethod force_z-val ((m <Force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader force_msg-msg:force_z-val is deprecated.  Use force_msg-msg:force_z instead.")
  (force_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Force>) ostream)
  "Serializes a message object of type '<Force>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'force_x))))
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
   (cl:slot-value msg 'force_x))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'force_y))))
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
   (cl:slot-value msg 'force_y))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'force_z))))
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
   (cl:slot-value msg 'force_z))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Force>) istream)
  "Deserializes a message object of type '<Force>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'force_x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'force_x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'force_y) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'force_y)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'force_z) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'force_z)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Force>)))
  "Returns string type for a message object of type '<Force>"
  "force_msg/Force")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Force)))
  "Returns string type for a message object of type 'Force"
  "force_msg/Force")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Force>)))
  "Returns md5sum for a message object of type '<Force>"
  "775e4325e2a6aa8d2d055511b3592b1c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Force)))
  "Returns md5sum for a message object of type 'Force"
  "775e4325e2a6aa8d2d055511b3592b1c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Force>)))
  "Returns full string definition for message of type '<Force>"
  (cl:format cl:nil "int32[] force_x~%int32[] force_y~%int32[] force_z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Force)))
  "Returns full string definition for message of type 'Force"
  (cl:format cl:nil "int32[] force_x~%int32[] force_y~%int32[] force_z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Force>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'force_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'force_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'force_z) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Force>))
  "Converts a ROS message object to a list"
  (cl:list 'Force
    (cl:cons ':force_x (force_x msg))
    (cl:cons ':force_y (force_y msg))
    (cl:cons ':force_z (force_z msg))
))
