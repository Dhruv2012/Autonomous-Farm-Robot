#!/usr/bin/env python

import rospy
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion
from geometry_msgs.msg import Pose, Twist
from math import atan2
from math import sqrt
from std_msgs.msg import Float64
from sensor_msgs.msg import Imu

angle_to_goal = 0.0
distance_to_goal = 0.0
destination_flag = 0
prev_angle_to_goal = 0.0

def callback_for_angle(msg):
	global angle_to_goal,prev_angle_to_goal
	prev_angle_to_goal = angle_to_goal
	angle_to_goal = msg.data
	#print(msg.data)
	#print(type(msg))
	print("msg for angle to turn: " + str(msg.data))
	GPSAlgoV1()

def callback_for_distance(msg):
	global distance_to_goal
	distance_to_goal = msg.data
	print("msg for distance to move: " + str(msg.data))
	GPSAlgoV1()

def GPSAlgoV1():
	global destination_flag,angle_to_goal,distance_to_goal,prev_angle_to_goal 
	velocity = Twist()
	x_linear = 0.0
	z_angular = 0.0
	orientation_error = float(angle_to_goal)
	prev_orientation_error = float(prev_angle_to_goal)
	'''
	if(orientation_error > 180):
		orientation_error = orientation_error - 360.0
	elif(orientation_error < -180):
		orientation_error = orientation_error + 360.0
	
	if(prev_orientation_error > 180):
		prev_orientation_error = prev_orientation_error - 360.0
	elif(prev_orientation_error < -180):
		prev_orientation_error = prev_orientation_error + 360.0
	'''
	kp = 0.01
	kd = 0.5
	
	if(distance_to_goal<=0.5 or destination_flag == 1):
		print("Destination reached!!")
		destination_flag = 1
		z_angular = 0
		x_linear = 0

	if(destination_flag == 0):
		if(abs(orientation_error) >= 2):
			z_angular = kp*orientation_error + kd*(orientation_error - prev_orientation_error)
			x_linear = 0.2		#Take slow turn while moving forward
			if(abs(orientation_error)>10):
				x_linear = 0	#Rotate at the present location as error is much larger
				print("Rotating...")
			if(distance_to_goal <= 1):
				x_linear = 0	#Stop
				z_angular = 0
				destination_flag = 1
				print("Destination reached!!")
			#print("setting angle::")

		elif(abs(orientation_error) < 2):
			z_angular = 0		#Don't rotate as error is much smaller'
			if(distance_to_goal > 1):
				x_linear = 0.4	#Move straight to goal
				print("Moving straight to goal")
			elif(distance_to_goal <= 1):
				x_linear = 0	#Stop
				z_angular = 0
				destination_flag = 1
				print("Destination reached!!")
			
		if(abs(z_angular)>0.5):
			z_angular = 0.5*(abs(z_angular)/z_angular)
				
	velocity.angular.z = z_angular
	velocity.linear.x = x_linear
	pub.publish(velocity)
	

if __name__ =='__main__' :
	try:
		rospy.init_node("autonomousdrive")
		pub = rospy.Publisher("/agribot/cmd_vel", Twist, queue_size = 10)
		sub1 = rospy.Subscriber("/angle", Float64,callback_for_angle)
		sub2 = rospy.Subscriber("/distance",Float64,callback_for_distance)
		rospy.spin()
	except rospy.ROSInterruptException:
		velocity = Twist()
        	velocity.angular.z = 0
		velocity.linear.x = 0
		pub.publish(velocity)    
