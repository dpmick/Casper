#!/usr/bin/env python

import rospy
import math
import time
from std_msgs.msg import int64, float64, Header
from dual_mc33926_rpi import motors
from casper.msg import DualMotorController

class Motor_Control:

	def __init__(self):
	
		motors.enable() # Enables Motors from library
		
		# ROS communication
		rospy.init_node('Motor_Control', anonymous=True)
		self.motor_sub = rospy.Subscriber('/motor_control', DualMotorController, callback=self.motor_callback)
		
		self.motor_comm()
		
	def motor_callback(self,msg):
		self.mtr1_dir = msg.M1DIR
		self.mtr2_dir = msg.M2DIR
		self.mtr1_PWM = msg.M1PWM
		self.mtr2_PWM = msg.M2PWM
			
	def motor_comm(self): # Sends signals to motors
		rate = rospy.Rate(20)
		while not rospy.is_shutdown():
			mtr1_speed = self.mtr1_dir * self.mtr1_PWM
			mtr2_speed = self.mtr2_dir * self.mtr2_PWM # Motor speeds and directions
		
			motors.setSpeeds(mtr1_speed, mtr2_speed)
			
			rate.sleep()
			
if __name__ == "__main__":
	Motor_Control()
		
