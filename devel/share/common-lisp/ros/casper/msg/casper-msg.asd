
(cl:in-package :asdf)

(defsystem "casper-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CurrentSensor" :depends-on ("_package_CurrentSensor"))
    (:file "_package_CurrentSensor" :depends-on ("_package"))
    (:file "DualMotorController" :depends-on ("_package_DualMotorController"))
    (:file "_package_DualMotorController" :depends-on ("_package"))
    (:file "Encoder" :depends-on ("_package_Encoder"))
    (:file "_package_Encoder" :depends-on ("_package"))
  ))