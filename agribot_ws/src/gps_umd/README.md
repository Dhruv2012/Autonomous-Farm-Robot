gps_umd [![Build Status](https://travis-ci.org/swri-robotics/gps_umd.svg?branch=master)](https://travis-ci.org/swri-robotics/gps_umd)
=======

This package is a space to stage messages and common GPS-processing routines.  The previous maintainer has not released these packages since ROS Indigo; this fork was created in order to fix them up and release them for ROS Jade and Kinetic.

One change of note is that in the version of libgps in Ubuntu 16.04, the `STATUS_DGPS_FIX` flag was removed, so the `gpsd_client` package will be unable to indicate whether DGPS was used in a fix or not.

Otherwise, the API is unchanged; see http://wiki.ros.org/gps_common .


NavSatFix vs. GPSFix
--------------------

The node `fix_translator` converts [sensor_msgs/NavSatFix](http://docs.ros.org/api/sensor_msgs/html/msg/NavSatFix.html) messages to [gps_common/GPSFix](http://docs.ros.org/api/gps_common/html/msg/GPSFix.html) messages and vice versa. Usage examples:

### Translate from NavSatFix to GPSFix

```xml
  <node name="fix_translator" pkg="gps_common" type="fix_translator">
    <!-- Translate from NavSatFix to GPSFix //-->
      <remap from="/navsat_fix_in"  to="/YOUR_NAVSATFIX_TOPIC"/>
      <remap from="/gps_fix_out"    to="/YOUR_GPSFIX_TOPIC"/>
  </node>
```


### Translate from GPSFix to NavSatFix

```xml
  <node name="fix_translator" pkg="gps_common" type="fix_translator">
    <!-- Translate from GPSFix to NavSatFix //-->
       <remap from="/gps_fix_in"     to="/YOUR_GPSFIX_TOPIC"/>
       <remap from="/navsat_fix_out" to="/YOUR_NAVSATFIX_TOPIC"/>
  </node>
```

Only adjust the topic names after "to=" in each remap line.
