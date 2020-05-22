string id
# Unique id for the obstacle or empty if not used.

geometry_msgs/Pose pose
# The pose of the origin of the obstacle.

geometry_msgs/Point[] polygon
# A list of points that define the obstacle's geometry in horizontal
# plane relative to the obstacle's pose.  The polygon is implicitly
# closed by a segment between the last and first points.
