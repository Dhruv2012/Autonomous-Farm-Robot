^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package gpsd_client
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

0.3.0 (2019-10-03)
------------------

0.2.0 (2017-11-16)
------------------
* Add include for <cmath> in gpsd_client
* Add parameter to set frame_id.
* Contributors: Kris Kozak, P. J. Reed

0.1.9 (2017-05-08)
------------------

0.1.8 (2016-10-31)
------------------
* Use pre-processor defines to handle different libgps API versions
  Fixes `#1 <https://github.com/swri-robotics/gps_umd/issues/1>`_
* Contributors: P. J. Reed

0.1.7 (2014-05-08)
------------------
* Fix a segfault when there is no GPS fix: time will be NaN which causes the ROS timestamp message to throw a Boost rounding exception.
* Contributors: Stuart Alldritt

0.1.6
-----
* Initial catkin release
