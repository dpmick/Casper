#!/usr/bin/env python

from __future__ import print_function
import rospy
import wiringpi
import math
import time
from dual_mc33926_rpi import motors, MAX_SPEED # current_sensors, encoders.
from std_msgs.msg import Int64, Float64, Header
from casper.msg import DualMotorController

class Motor_Control:
	
	max_speed = 480

	def __init__(self):
		
		self.mtr1_dir = 1
		self.mtr1_pwm = 100
		motors.enable()
		motors.setSpeeds(0,0)
		# ROS communication
		rospy.init_node('Motor_Control', anonymous=True)
		self.motor_sub = rospy.Subscriber('/motor_control', DualMotorController, callback=self.motor_callback)
		
		self.motor_comm()
		
	def motor_callback(self,msg):
		self.mtr1_dir = msg.M1DIR
		self.mtr1_pwm = msg.M1PWM
			
	def motor_comm(self): # Sends signals to motors
		rate = rospy.Rate(20)
		while not rospy.is_shutdown():
			
			# Send topics to motor
			motors.motor1.setSpeed(self.mtr1_dir*self.mtr1_pwm)
			
			rate.sleep()
			
if __name__ == "__main__":
	Motor_Control()
		
