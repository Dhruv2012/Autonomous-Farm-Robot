# This message contains an an exposure value along with a
# message header.  This message is to keep the same format
# that we have with Image and CameraInfo.

Header header                    # Header timestamp is the time when all 
                                 # images were acquired and synchronized.
                                 # Header frame_id is the count of these
                                 # messages sent since the start.
                               
uint64 value                     # Exposure value

