#!/usr/bin/env python

import rospy
import math
import time
import wiringpi
from std_msgs.msg import Int64, Float64
from casper.msg import Encoder

class Current_Encoder:
	
	def __init__(self):
	
		# Encoder Initialization
		ic1_pin_base=65
		ic1_ic2_addr=0x20
		wiringpi.wiringPiSetup()
		wiringpi.mcp23017Setup(ic1_pin_base,ic1_ic2_addr)
		
		# ROS communication
		rospy.init_node('encoder', anonymous=True)
		self.encoder_pub = rospy.Publisher('/encoder', Encoder, queue_size = 10)
		
		self.receive_encoder()
	
	def encoder(self,msg):
		self.mtr1_W = msg.Encoder1
		self.mtr2_Y = msg.Encoder2
			
	def receive_encoder(self):
		rate = rospy.Rate(20)
		
		while not rospy.is_shutdown():
			self.mtr1_W = wiringpi.pinMode(72,0) #GPA7 Motor 1
			self.mtr2_Y = wiringpi.pinMode(73,0) #GPB0 Motor 1
			
			rate.sleep()
			
if __name__ == "__main__":
	Current_Encoder()
