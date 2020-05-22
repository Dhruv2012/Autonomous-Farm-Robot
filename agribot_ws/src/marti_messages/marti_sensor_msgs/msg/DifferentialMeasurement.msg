# A differential measurement between two places in the world
#  Usually used with RTK-gps setups

Header  header           # The time and location where this measurement is taken from
string  base_frame_id    # The location we are measuring relative to

float64 baseline_length  # Distance in meters between the two locations
float64 baseline_length_variance # set > 1e14 to mark as invalid
float64 heading          # Heading in degrees of the relative position vector
float64 heading_variance # set > 1e14 to mark as invalid
float64 pitch            # Pitch in degrees of the relative position vector
float64 pitch_variance   # set > 1e14 to mark as invalid
float64 roll             # Roll in degrees of the relative position vector
float64 roll_variance    # set > 1e14 to mark as invalid

geometry_msgs/Vector3 position  # position measurement between this point and our reference location
                                # coordinates are given in ENU meters
float64[9] position_covariance  # Covariance for the position measurement
                       # set > 1e14 to mark as invalid
