uint8 VEHICLE=0
uint8 PEDESTRIAN=1
uint8 UNKNOWN=255

Header header  # Frame and timestamp
uint16 id      # Id

geometry_msgs/PoseWithCovariance pose      # Pose in the header frame.
geometry_msgs/TwistWithCovariance velocity # Velocity in the header frame.
geometry_msgs/Vector3 linear_acceleration  # Acceleration in the header frame.
float64[9] linear_acceleration_covariance  # Row major x, y z

geometry_msgs/Point[] polygon
# A list of points that define the obstacle's geometry in horizontal
# plane relative to the obstacle's pose.  The polygon is implicitly
# closed by a segment between the last and first points.

# Estimated oriented bounding box for object classes with rectangular shapes.
float32 length                 # Length of the object in meters
float32 length_quality         # Length quality number [0,1]
float32 width                  # Width of the object in meters
float32 width_quality          # Width quality number [0,1]

uint8 classification           # Classification
float32 classification_quality # Classification quality number [0,1]

float32 existence_probability  # Existence probability [0,1]

duration age_duration          # Age of the track since first detection.
duration prediction_duration   # Age of the prediction since the active flag was last true.

bool active                    # Active flag for if the objects is currently being detected.
