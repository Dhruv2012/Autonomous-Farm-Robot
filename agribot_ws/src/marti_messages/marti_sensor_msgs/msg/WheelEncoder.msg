# Frequency from wheel encoder
#  If directional (below) is True, positive frequency means forward, and
#   negative frequency means backward.
#  If directional is False, frequency is non-negative and has no directional
#   information
float64 frequency

# True if frequency sign is significant; false else
bool directional

# ID of the wheel with which this data is associated
uint8 id