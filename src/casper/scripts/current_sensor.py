#!/usr/bin/env python

import rospy
import math
import time
import Adafruit_GPIO.SPI as SPI
import Adafruit_MCP3008
import wiringpi
from std_msgs.msg import Int64, Float64
from casper.msg import CurrentSensor

class Current_Sensor:
	
	
	def __init__(self):
	
		CLK  = 27
		MISO = 18
		MOSI = 17
		CS   = 4
		self.mcp = Adafruit_MCP3008.MCP3008(clk=CLK, cs=CS, miso=MISO, mosi=MOSI)	
			
		# ROS communication
		rospy.init_node('current_sensor', anonymous=True)
		self.current_pub = rospy.Publisher('/current_sensor', CurrentSensor, queue_size = 10)
		
		self.receive_current()
		
	def current_sensor(self,msg):
		self.current = msg.Current
		
			
	def receive_current(self): # Reads current from sensors
		rate = rospy.Rate(20)
		while not rospy.is_shutdown():

			# Read data
			self.current = self.mcp.read_adc(0)
			
			self.current_pub.publish(self.current)
			
			rate.sleep()
			
if __name__ == "__main__":
	Current_Sensor()
