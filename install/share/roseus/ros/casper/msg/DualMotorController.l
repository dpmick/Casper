;; Auto-generated. Do not edit!


(when (boundp 'casper::DualMotorController)
  (if (not (find-package "CASPER"))
    (make-package "CASPER"))
  (shadow 'DualMotorController (find-package "CASPER")))
(unless (find-package "CASPER::DUALMOTORCONTROLLER")
  (make-package "CASPER::DUALMOTORCONTROLLER"))

(in-package "ROS")
;;//! \htmlinclude DualMotorController.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass casper::DualMotorController
  :super ros::object
  :slots (_header _M1DIR _M2DIR _M1PWM _M2PWM ))

(defmethod casper::DualMotorController
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:M1DIR __M1DIR) 0)
    ((:M2DIR __M2DIR) 0)
    ((:M1PWM __M1PWM) 0.0)
    ((:M2PWM __M2PWM) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _M1DIR (round __M1DIR))
   (setq _M2DIR (round __M2DIR))
   (setq _M1PWM (float __M1PWM))
   (setq _M2PWM (float __M2PWM))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:M1DIR
   (&optional __M1DIR)
   (if __M1DIR (setq _M1DIR __M1DIR)) _M1DIR)
  (:M2DIR
   (&optional __M2DIR)
   (if __M2DIR (setq _M2DIR __M2DIR)) _M2DIR)
  (:M1PWM
   (&optional __M1PWM)
   (if __M1PWM (setq _M1PWM __M1PWM)) _M1PWM)
  (:M2PWM
   (&optional __M2PWM)
   (if __M2PWM (setq _M2PWM __M2PWM)) _M2PWM)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _M1DIR
    8
    ;; int64 _M2DIR
    8
    ;; float64 _M1PWM
    8
    ;; float64 _M2PWM
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _M1DIR
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _M1DIR (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _M1DIR) (= (length (_M1DIR . bv)) 2)) ;; bignum
              (write-long (ash (elt (_M1DIR . bv) 0) 0) s)
              (write-long (ash (elt (_M1DIR . bv) 1) -1) s))
             ((and (class _M1DIR) (= (length (_M1DIR . bv)) 1)) ;; big1
              (write-long (elt (_M1DIR . bv) 0) s)
              (write-long (if (>= _M1DIR 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _M1DIR s)(write-long (if (>= _M1DIR 0) 0 #xffffffff) s)))
     ;; int64 _M2DIR
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _M2DIR (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _M2DIR) (= (length (_M2DIR . bv)) 2)) ;; bignum
              (write-long (ash (elt (_M2DIR . bv) 0) 0) s)
              (write-long (ash (elt (_M2DIR . bv) 1) -1) s))
             ((and (class _M2DIR) (= (length (_M2DIR . bv)) 1)) ;; big1
              (write-long (elt (_M2DIR . bv) 0) s)
              (write-long (if (>= _M2DIR 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _M2DIR s)(write-long (if (>= _M2DIR 0) 0 #xffffffff) s)))
     ;; float64 _M1PWM
       (sys::poke _M1PWM (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _M2PWM
       (sys::poke _M2PWM (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _M1DIR
#+(or :alpha :irix6 :x86_64)
      (setf _M1DIR (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _M1DIR (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _M2DIR
#+(or :alpha :irix6 :x86_64)
      (setf _M2DIR (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _M2DIR (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _M1PWM
     (setq _M1PWM (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _M2PWM
     (setq _M2PWM (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get casper::DualMotorController :md5sum-) "8851bbde2e6ab82060d8c2f1d601e8f0")
(setf (get casper::DualMotorController :datatype-) "casper/DualMotorController")
(setf (get casper::DualMotorController :definition-)
      "Header header
int64 M1DIR
int64 M2DIR
float64 M1PWM
float64 M2PWM

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



(provide :casper/DualMotorController "8851bbde2e6ab82060d8c2f1d601e8f0")


