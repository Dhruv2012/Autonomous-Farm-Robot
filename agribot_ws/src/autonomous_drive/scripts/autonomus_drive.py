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

def callback_for_angle(msg):
	global angle_to_goal
	angle_to_goal = msg.data
	print(msg.data)
	#print(type(msg))
	print("msg for angle to turn")
	GPSAlgoV1()

def callback_for_distance(msg):
	global distance_to_goal
	distance_to_goal = msg.data
	print(msg.data)
	print("msg for distance to move")
	GPSAlgoV1()

def GPSAlgoV1():
	global destination_flag,angle_to_goal,distance_to_goal 
	velocity = Twist()
	x_linear = 0.0
	z_angular = 0.0
	orientation_error = float(angle_to_goal)

	if(orientation_error > 180):
		orientation_error = orientation_error - 360.0
	elif(orientation_error < -180):
		orientation_error = orientation_error + 360.0
	kp = 0.1
	kd = 0
	
	if(distance_to_goal<1):
		print("Reached Destination!!")
		destination_flag = 1

	if(destination_flag == 0 and abs(orientation_error)>2):
		if(orientation_error>10 or orientation_error<-10):
			z_angular = kp*orientation_error 
			print("setting angle::")
			
			if(abs(z_angular)>1):
				z_angular = 1*(abs(z_angular)/z_angular)
				x_linear=0	
		velocity.angular.z = z_angular
		velocity.linear.x = x_linear
		pub.publish(velocity)
	
	elif(destination_flag==0):
		if(distance_to_goal>1):
			z_angular = 0
			x_linear = 1
		else:
			z_angular = 0
			x_linear = 0
			destination_flag = 1
		velocity.angular.z = z_angular
		velocity.linear.x = x_linear
		pub.publish(velocity)
	

if __name__ =='__main__' :
	rospy.init_node("autonomousdrive")
	pub = rospy.Publisher("/agribot/cmd_vel", Twist, queue_size = 10)
	sub1 = rospy.Subscriber("/angle", Float64,callback_for_angle)
	sub2 = rospy.Subscriber("/distance",Float64,callback_for_distance)
	rospy.spin()
