#!/usr/bin/env python

import matplotlib.pyplot as plt
import rospy
import numpy as np 
from geometry_msgs.msg import Vector3Stamped
from std_msgs.msg import Float64
import data_manipulation

def plot(msg):
	x = msg
	y = rospy.get_rostime()
	plt.subplot(2,2,1)
	plt.plot(x,y)
	plt.axis("equal")
        plt.draw()
        plt.pause(0.00000000001)

if __name__ == '__main__':
	rospy.init_node('plot')	
	rospy.Subscriber('Rawheading',Float64,plot)
	plt.ion()
        plt.show()
	rate = rospy.Rate(100) # 100hz
	rospy.spin()

