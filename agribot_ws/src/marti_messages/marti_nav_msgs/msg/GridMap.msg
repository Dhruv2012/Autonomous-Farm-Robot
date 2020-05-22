Header header

# Map extents in the header frame.
geometry_msgs/Point top_left
geometry_msgs/Point top_right
geometry_msgs/Point bottom_right
geometry_msgs/Point bottom_left

# Map data layers
string[]            map_names
sensor_msgs/Image[] map_data
