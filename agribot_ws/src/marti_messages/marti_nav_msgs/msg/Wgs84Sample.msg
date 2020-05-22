# This message contains an absolute position measurement (in
# spherical/WGS-84 coordinates) and the corresponding sensor
# (e.g. antenna) location in a vehicle's relative odometry coordinate
# frame.

Header header
# The header contains the /tf name of the relative odometry frame and
# the timestamp of the measurement.

geometry_msgs/Point odom
# The position of the sample in the relative odometry frame.

geometry_msgs/Point wgs84
# The WGS84 measurement (x = longitude in decimal degrees, y =
# latitude in decimal degrees, z = altitude over the reference
# ellipsoid in meters)

float64[9] wgs84_covariance
# An estimate of WGS-84 measurement's covariance.
