#!/usr/bin/env python

import rospy
import time 
import tf
from nav_msgs.msg import Odometry
from sensor_msgs.msg import NavSatFix
from tf.transformations import quaternion_from_euler
from geometry_msgs.msg import Pose,Quaternion,Vector3Stamped
from std_msgs.msg import Float64
from math import * 
import re
import numpy as np
import GPS_data_conversion 

i = 0
lisheading = []
heading = 0
angle_between_origin_to_goal = 0

def medianFilter(lis):
	ans = np.median(lis)
	return ans

def callback(msg, pub):
	#magnetic = Vector3()
	global lisheading
	global i
	global heading
	magnetic_x = msg.vector.x
	magnetic_y = msg.vector.y
	RawHeading = atan2(magnetic_y, magnetic_x) * 180/pi
	mag_data.publish(RawHeading)
	lisheading.append(RawHeading)
	if i == 7:
		#print(lisheading)
		heading = -1 * medianFilter(lisheading)
		#print(heading)
		lisheading = []		
		pub.publish(heading)	
		i = 0
	i = i+1
def angleassignment(msg):
	global angle_between_origin_to_goal
	angle_between_origin_to_goal = msg.data

def callbackRaw(msg,mag_data):
	#magnetic = Vector3()
	global lisheading
	global i
	magnetic_x = msg.vector.x
	magnetic_y = msg.vector.y
	RawHeading = atan2(magnetic_y, magnetic_x) * 180/pi
	mag_data.publish(RawHeading)

def angle_to_move(msg,angle_pub):
	currentPosex = msg.position.x
	currentPosey = msg.position.y
	Current_heading = heading
	angle_with_positive_X_axis = atan2(currentPosey,currentPosex) * (180/pi)
	'''
	if ((currentPosex > 0) & (currentPosey > 0)):
		angleToMove = 180 - Current_heading + angle_with_positive_X_axis - angle_between_origin_to_goal
	elif((currentPosex > 0) & (currentPosey < 0)):
		angleToMove = 180 + Current_heading - (-1)*(angle_with_positive_X_axis) - angle_between_origin_to_goal
	elif((currentPosex < 0) & (currentPosey > 0)):
		angleToMove = -1*180 - Current_heading + angle_with_positive_X_axis + angle_between_origin_to_goal
	else:
		angleToMove = -1*180 + Current_heading + (-1)*(angle_with_positive_X_axis) + angle_between_origin_to_goal
	'''
	if(angle_between_origin_to_goal < 0):
		angleToMove = (-1)*(abs(angle_between_origin_to_goal) + Current_heading) - 90
	else:
		angleToMove = abs(angle_between_origin_to_goal) - Current_heading - 90


	if(angleToMove > 180):
		angleToMove = angleToMove - 360
	elif(angleToMove < -180):
		angleToMove = angleToMove + 360
	else:
		angleToMove = angleToMove 
	print(angleToMove)
	print(angle_with_positive_X_axis)
	print(angle_between_origin_to_goal)
	angle_pub.publish(angleToMove)

	
if __name__ == '__main__':
	rospy.init_node('data_manipulation')
	pub = rospy.Publisher('Filteredheading', Float64, queue_size = 3)
	mag_data = rospy.Publisher('Rawheading', Float64, queue_size=10)
	angle_pub = rospy.Publisher('angle', Float64, queue_size=10)	
	rospy.Subscriber('angleOG',Float64,angleassignment,queue_size = 5)	
	rospy.Subscriber('/magnetic', Vector3Stamped , callback,pub,queue_size = 10)
	rospy.Subscriber('/currentPose',Pose,angle_to_move,angle_pub,queue_size = 3)
	rate = rospy.Rate(100) # 100hz
	rospy.spin()
	
