#include <ros/ros.h>
#include <nav_msgs/Odometry.h>
#include <stdio.h>

void gpsCallback(const nav_msgs::Odometry::ConstPtr& msg)
{
//  printf("Got msg!\n");
  printf("%lf,%lf,0\n",msg->pose.pose.position.y,msg->pose.pose.position.x,msg->pose.pose.position.z);
  //printf("  VEL:[%lf] ANG:[%lf]\n",msg->linear.x,msg->angular.z);
}

int main(int argc, char ** argv)
{
  ros::init(argc, argv, "gps_dumper");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("gps_odom", 1, gpsCallback);
  ros::spin();
  return 0;
}
