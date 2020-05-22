# Direction of vehicle motion
#
# When combined with an unsigned speed, this message can be used to determine
# signed vehicle speed

Header  header           # The time and location of the measurement.
                         # The x-axis in the sensor space is interpreted as the
                         # axis of linear motion.

int8 BACKWARD=-1
int8 ZERO=0
int8 FORWARD=1
int8 UNKNOWN=127         # Indicates either unknown motion or motion that isn't clear if it is forwards
                         # or backwards such as turning in place

int8 direction           # The direction of motion. Positive is forward, negative is
                         # backward, and 0 is stopped.
