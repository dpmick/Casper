; Auto-generated. Do not edit!


(cl:in-package casper-msg)


;//! \htmlinclude CurrentSensor.msg.html

(cl:defclass <CurrentSensor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Current
    :reader Current
    :initarg :Current
    :type cl:float
    :initform 0.0))
)

(cl:defclass CurrentSensor (<CurrentSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurrentSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurrentSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name casper-msg:<CurrentSensor> is deprecated: use casper-msg:CurrentSensor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CurrentSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader casper-msg:header-val is deprecated.  Use casper-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'Current-val :lambda-list '(m))
(cl:defmethod Current-val ((m <CurrentSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader casper-msg:Current-val is deprecated.  Use casper-msg:Current instead.")
  (Current m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurrentSensor>) ostream)
  "Serializes a message object of type '<CurrentSensor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurrentSensor>) istream)
  "Deserializes a message object of type '<CurrentSensor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Current) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurrentSensor>)))
  "Returns string type for a message object of type '<CurrentSensor>"
  "casper/CurrentSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurrentSensor)))
  "Returns string type for a message object of type 'CurrentSensor"
  "casper/CurrentSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurrentSensor>)))
  "Returns md5sum for a message object of type '<CurrentSensor>"
  "eaf9aabaced7ef13f9d43a8742fa93f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurrentSensor)))
  "Returns md5sum for a message object of type 'CurrentSensor"
  "eaf9aabaced7ef13f9d43a8742fa93f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurrentSensor>)))
  "Returns full string definition for message of type '<CurrentSensor>"
  (cl:format cl:nil "Header header~%float64 Current~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurrentSensor)))
  "Returns full string definition for message of type 'CurrentSensor"
  (cl:format cl:nil "Header header~%float64 Current~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurrentSensor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurrentSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'CurrentSensor
    (cl:cons ':header (header msg))
    (cl:cons ':Current (Current msg))
))
