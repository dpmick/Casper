;; Auto-generated. Do not edit!


(when (boundp 'casper::Encoder)
  (if (not (find-package "CASPER"))
    (make-package "CASPER"))
  (shadow 'Encoder (find-package "CASPER")))
(unless (find-package "CASPER::ENCODER")
  (make-package "CASPER::ENCODER"))

(in-package "ROS")
;;//! \htmlinclude Encoder.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass casper::Encoder
  :super ros::object
  :slots (_header _Current _Encoder1 _Encoder2 ))

(defmethod casper::Encoder
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Current __Current) 0.0)
    ((:Encoder1 __Encoder1) 0.0)
    ((:Encoder2 __Encoder2) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Current (float __Current))
   (setq _Encoder1 (float __Encoder1))
   (setq _Encoder2 (float __Encoder2))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:Current
   (&optional __Current)
   (if __Current (setq _Current __Current)) _Current)
  (:Encoder1
   (&optional __Encoder1)
   (if __Encoder1 (setq _Encoder1 __Encoder1)) _Encoder1)
  (:Encoder2
   (&optional __Encoder2)
   (if __Encoder2 (setq _Encoder2 __Encoder2)) _Encoder2)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _Current
    8
    ;; float64 _Encoder1
    8
    ;; float64 _Encoder2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _Current
       (sys::poke _Current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Encoder1
       (sys::poke _Encoder1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Encoder2
       (sys::poke _Encoder2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _Current
     (setq _Current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Encoder1
     (setq _Encoder1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Encoder2
     (setq _Encoder2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get casper::Encoder :md5sum-) "9684e83a0d0addb6c2e31639cbbdce64")
(setf (get casper::Encoder :datatype-) "casper/Encoder")
(setf (get casper::Encoder :definition-)
      "Header header
float64 Current
float64 Encoder1
float64 Encoder2

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :casper/Encoder "9684e83a0d0addb6c2e31639cbbdce64")


