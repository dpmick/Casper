; Auto-generated. Do not edit!


(cl:in-package casper-msg)


;//! \htmlinclude DualMotorController.msg.html

(cl:defclass <DualMotorController> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (M1DIR
    :reader M1DIR
    :initarg :M1DIR
    :type cl:integer
    :initform 0)
   (M2DIR
    :reader M2DIR
    :initarg :M2DIR
    :type cl:integer
    :initform 0)
   (M1PWM
    :reader M1PWM
    :initarg :M1PWM
    :type cl:float
    :initform 0.0)
   (M2PWM
    :reader M2PWM
    :initarg :M2PWM
    :type cl:float
    :initform 0.0))
)

(cl:defclass DualMotorController (<DualMotorController>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DualMotorController>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DualMotorController)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name casper-msg:<DualMotorController> is deprecated: use casper-msg:DualMotorController instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DualMotorController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader casper-msg:header-val is deprecated.  Use casper-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'M1DIR-val :lambda-list '(m))
(cl:defmethod M1DIR-val ((m <DualMotorController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader casper-msg:M1DIR-val is deprecated.  Use casper-msg:M1DIR instead.")
  (M1DIR m))

(cl:ensure-generic-function 'M2DIR-val :lambda-list '(m))
(cl:defmethod M2DIR-val ((m <DualMotorController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader casper-msg:M2DIR-val is deprecated.  Use casper-msg:M2DIR instead.")
  (M2DIR m))

(cl:ensure-generic-function 'M1PWM-val :lambda-list '(m))
(cl:defmethod M1PWM-val ((m <DualMotorController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader casper-msg:M1PWM-val is deprecated.  Use casper-msg:M1PWM instead.")
  (M1PWM m))

(cl:ensure-generic-function 'M2PWM-val :lambda-list '(m))
(cl:defmethod M2PWM-val ((m <DualMotorController>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader casper-msg:M2PWM-val is deprecated.  Use casper-msg:M2PWM instead.")
  (M2PWM m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DualMotorController>) ostream)
  "Serializes a message object of type '<DualMotorController>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'M1DIR)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'M2DIR)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'M1PWM))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'M2PWM))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DualMotorController>) istream)
  "Deserializes a message object of type '<DualMotorController>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'M1DIR) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'M2DIR) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'M1PWM) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'M2PWM) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DualMotorController>)))
  "Returns string type for a message object of type '<DualMotorController>"
  "casper/DualMotorController")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DualMotorController)))
  "Returns string type for a message object of type 'DualMotorController"
  "casper/DualMotorController")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DualMotorController>)))
  "Returns md5sum for a message object of type '<DualMotorController>"
  "8851bbde2e6ab82060d8c2f1d601e8f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DualMotorController)))
  "Returns md5sum for a message object of type 'DualMotorController"
  "8851bbde2e6ab82060d8c2f1d601e8f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DualMotorController>)))
  "Returns full string definition for message of type '<DualMotorController>"
  (cl:format cl:nil "Header header~%int64 M1DIR~%int64 M2DIR~%float64 M1PWM~%float64 M2PWM~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DualMotorController)))
  "Returns full string definition for message of type 'DualMotorController"
  (cl:format cl:nil "Header header~%int64 M1DIR~%int64 M2DIR~%float64 M1PWM~%float64 M2PWM~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DualMotorController>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DualMotorController>))
  "Converts a ROS message object to a list"
  (cl:list 'DualMotorController
    (cl:cons ':header (header msg))
    (cl:cons ':M1DIR (M1DIR msg))
    (cl:cons ':M2DIR (M2DIR msg))
    (cl:cons ':M1PWM (M1PWM msg))
    (cl:cons ':M2PWM (M2PWM msg))
))
