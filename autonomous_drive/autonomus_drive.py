#!/usr/bin/env python

import rospy
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion
from geometry_msgs.msg import Pose, Twist
from math import atan2
from math import sqrt
from std_msgs.msg import Float64
from sensor_msgs.msg import Imu



def callback_from_imu(msg):
	print(msg)
	print("msg from imu")

def callback_from_gps(msg):
	print(msg)
	print("msg from GPS")

if __name__ =='__main__' :
	rospy.init_node("autonomusdrive")
	pub = rospy.Publisher("/agribot/cmd_vel", Twist, queue_size = 10)
	sub1 = rospy.Subscriber("/coordinates", Pose,callback_from_gps)
	sub2 = rospy.Subscriber("/imu",Imu,callback_from_imu)
	rospy.spin()
