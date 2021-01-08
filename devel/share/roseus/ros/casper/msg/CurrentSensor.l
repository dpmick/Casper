;; Auto-generated. Do not edit!


(when (boundp 'casper::CurrentSensor)
  (if (not (find-package "CASPER"))
    (make-package "CASPER"))
  (shadow 'CurrentSensor (find-package "CASPER")))
(unless (find-package "CASPER::CURRENTSENSOR")
  (make-package "CASPER::CURRENTSENSOR"))

(in-package "ROS")
;;//! \htmlinclude CurrentSensor.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass casper::CurrentSensor
  :super ros::object
  :slots (_header _Current ))

(defmethod casper::CurrentSensor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:Current __Current) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _Current (float __Current))
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
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _Current
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _Current
     (setq _Current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get casper::CurrentSensor :md5sum-) "eaf9aabaced7ef13f9d43a8742fa93f3")
(setf (get casper::CurrentSensor :datatype-) "casper/CurrentSensor")
(setf (get casper::CurrentSensor :definition-)
      "Header header
float64 Current

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



(provide :casper/CurrentSensor "eaf9aabaced7ef13f9d43a8742fa93f3")


