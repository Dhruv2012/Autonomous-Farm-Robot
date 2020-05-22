uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2

Header              header

string              ns           # Namespace to place this object in... used in
                                 # conjunction with id to create a unique name
                                 # for the object.

int32               id
int32               action       # 0 add/modify an object, 2 deletes an object

duration            lifetime     # How long the object should last before being
                                 # automatically deleted.  0 means forever

sensor_msgs/Image   image
geometry_msgs/Pose  pose         # The pose of the image center with respect to
                                 # the header frame.

float64             resolution   # The pixel scale in meters.

float32             alpha        # The overall alpha transparency to display the
                                 # marker with.
