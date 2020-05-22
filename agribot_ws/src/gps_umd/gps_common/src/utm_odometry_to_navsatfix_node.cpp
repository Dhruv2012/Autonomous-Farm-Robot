/*
 * Translates nav_msgs/Odometry in UTM coordinates back into sensor_msgs/NavSat{Fix,Status}
 * Useful for visualizing UTM data on a map or comparing with raw GPS data
 * Added by Dheera Venkatraman (dheera@dheera.net)
 */

#include <ros/ros.h>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <sensor_msgs/NavSatStatus.h>
#include <sensor_msgs/NavSatFix.h>
#include <gps_common/conversions.h>
#include <nav_msgs/Odometry.h>

using namespace gps_common;

static ros::Publisher fix_pub;
std::string frame_id, child_frame_id;
std::string zone_param;
double rot_cov;

void callback(const nav_msgs::OdometryConstPtr& odom) {

  if (odom->header.stamp == ros::Time(0)) {
    return;
  }

  if (!fix_pub) {
    return;
  }

  double northing, easting, latitude, longitude;
  std::string zone;
  sensor_msgs::NavSatFix fix;

  northing = odom->pose.pose.position.y;
  easting = odom->pose.pose.position.x;

  if(zone_param.length() > 0) {
    // utm zone was supplied as a ROS parameter
    zone = zone_param;
    fix.header.frame_id = odom->header.frame_id;
  } else {
    // look for the utm zone in the frame_id
    std::size_t pos = odom->header.frame_id.find("/utm_");
    if(pos==std::string::npos) {
      ROS_WARN("UTM zone not found in frame_id");
      return;
    }
    zone = odom->header.frame_id.substr(pos + 5, 3);
    fix.header.frame_id = odom->header.frame_id.substr(0, pos);
  }

  ROS_INFO("zone: %s", zone.c_str());

  fix.header.stamp = odom->header.stamp;

  UTMtoLL(northing, easting, zone, latitude, longitude);

  fix.latitude = latitude;
  fix.longitude = longitude; 
  fix.altitude = odom->pose.pose.position.z;

  fix.position_covariance[0] = odom->pose.covariance[0];
  fix.position_covariance[1] = odom->pose.covariance[1];
  fix.position_covariance[2] = odom->pose.covariance[2];
  fix.position_covariance[3] = odom->pose.covariance[6];
  fix.position_covariance[4] = odom->pose.covariance[7];
  fix.position_covariance[5] = odom->pose.covariance[8];
  fix.position_covariance[6] = odom->pose.covariance[12];
  fix.position_covariance[7] = odom->pose.covariance[13];
  fix.position_covariance[8] = odom->pose.covariance[14];
  
  fix.status.status = sensor_msgs::NavSatStatus::STATUS_FIX;

  fix_pub.publish(fix);
}

int main (int argc, char **argv) {
  ros::init(argc, argv, "utm_odometry_to_navsatfix_node");
  ros::NodeHandle node;
  ros::NodeHandle priv_node("~");

  priv_node.param<std::string>("frame_id", frame_id, "");
  priv_node.param<std::string>("zone", zone_param, "");

  fix_pub = node.advertise<sensor_msgs::NavSatFix>("odom_fix", 10);

  ros::Subscriber odom_sub = node.subscribe("odom", 10, callback);

  ros::spin();
}

