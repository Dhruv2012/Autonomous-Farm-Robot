#!/usr/bin/env python

import rospy
import actionlib
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal

waypoints = [
	[(-7.33724421822, -0.290481491014, 0.0), (0.0, 0.0, 0.997657097136, 0.0684128389565)]
	#,[(6.5, 4.43, 0.0), (0.0, 0.0, 0.619196935302, 0.78523573232)]
		]

def goal_pose(pose):
	goal_pose = MoveBaseGoal()
	goal_pose.target_pose.header.frame_id = 'imu_link'
	goal_pose.target_pose.pose.position.x = pose[0][0]
	goal_pose.target_pose.pose.position.y = pose[0][1]
	goal_pose.target_pose.pose.position.z = pose[0][2]
	goal_pose.target_pose.pose.orientation.x = pose[1][0]
	goal_pose.target_pose.pose.orientation.y = pose[1][1]
	goal_pose.target_pose.pose.orientation.z = pose[1][2]
	goal_pose.target_pose.pose.orientation.w = pose[1][3]
	return goal_pose

if __name__ == '__main__':
	rospy.init_node('patrol')
	client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
	client.wait_for_server()
	while True:
		for pose in waypoints:
			goal = goal_pose(pose)
			client.send_goal(goal)
			client.wait_for_result()
