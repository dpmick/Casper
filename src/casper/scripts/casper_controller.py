#!/usr/bin/env python

import rospy
import math
import time
from dual_mc33926_rpi import motors, MAX_SPEED#, current_sensors, encoders
import wiringpi
from std_msgs.msg import Int64, Float64
from casper.msg import DualMotorController, CurrentSensor, Encoder

class Casper_Controller:

	def __init__(self):
		
		self.DualMotorController = DualMotorController()

		test_forward_speeds = list(range(0, MAX_SPEED, 1)) + \
  [MAX_SPEED] * 200 + list(range(MAX_SPEED, 0, -1)) + [0] 
		self.current = 0

		# ROS communication
		rospy.init_node('Casper_Controller', anonymous=True)
		self.motor_pub = rospy.Publisher('/motor_control', DualMotorController, queue_size = 10)
		self.current_sensor_sub = rospy.Subscriber('/current_sensor', CurrentSensor, callback=self.current_sensor_callback)
		self.encoder_sub = rospy.Subscriber('/encoder', Encoder, callback = self.encoder_callback)
		
		self.controller()
	
	
	def current_sensor_callback(self,msg):
		self.current = msg.Current
		
	def encoder_callback(self,msg):
		self.encoder1_W = msg.Encoder1
		self.encoder1_Y = msg.Encoder2

	def motor_control(self,msg):
		self.M1DIR = msg.M1DIR
		self.M1PWM = msg.M1PWM
		self.M2DIR = msg.M2DIR
		self.M2PWM = msg.M2PWM
		
	def controller(self):
	
		rate = rospy.Rate(20)
		
		while not rospy.is_shutdown():
			
			M1DIR = 1
			M1PWM = 100
			# Controller Script
			self.DualMotorController.M1DIR = M1DIR
			self.DualMotorController.M1PWM = M1PWM
			self.DualMotorController.M2PWM = 0
			self.DualMotorcontroller.M2DIR = 0

			print(self.current)
			#print(self.encoder1)
			#print(self.encoder2)
			self.motor_pub.publish(self.DualMotorController)
			#self.motor_pub.publish(self.M1PWM)
			rate.sleep()
			
if __name__ == "__main__":
	Casper_Controller()
