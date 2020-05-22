#!/usr/bin/env python

import rospy
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion
from geometry_msgs.msg import Pose, Twist
from math import atan2
from math import sqrt
from std_msgs.msg import Float64
from sensor_msgs.msg import Imu



def callback_for_angle(msg):
	print(msg)
	print("msg for angle to turn")

def callback_for_distance(msg):
	print(msg)
	print("msg for distance to move")

if __name__ =='__main__' :
	rospy.init_node("autonomousdrive")
	pub = rospy.Publisher("/agribot/cmd_vel", Twist, queue_size = 10)
	sub1 = rospy.Subscriber("/angle", Float64,callback_for_angle)
	sub2 = rospy.Subscriber("/distance",Float64,callback_for_distance)
	rospy.spin()
