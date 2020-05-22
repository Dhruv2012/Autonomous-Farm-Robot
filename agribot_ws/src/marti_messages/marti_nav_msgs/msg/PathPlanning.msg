Header header

int32   segment_type    # Type of path segment
float32 length          # Length of path segment
float32 start_speed     # Desired speed at start of path segment
float32 end_speed       # Desired speed at end of path segment
float32 startx          # Starting x-coordinate of the vehicle
float32 starty          # Starting y-coordinate of the vehicle
float32 endx            # Ending x-coordinate of the vehicle
float32 endy            # Ending y-coordinate of the vehicle
float32 theta0          # theta0 (constant) parameter for initial heading
float32 a1              # a1 (linear) parameter for the x-y track
float32 a2              # a2 (quadratric) parameter for the x-y track
float32 k0              # k0 (constant) parameter for the curvature
float32 c1              # c1 (linear) parameter for the curvature
float32 c2              # c2 (quadratic) parameter for the curvature
int32 behavior          # Type of behavior for the segment
int32 creep             # Whether we should be in creep mode of not (0-No, 1-Yes)
int32 acc               # Whether ACC Override is on (0-Normal ACC, 1-Override ACC)
int32 reverse           # Whether we should be in reverse or not (0-No, 1-Yes)
int32 vehicle_track     # Whether we are tracking a vehicle (0-No, 1-Yes)

# The following items are used in Intelligence, but won't be transmitted with
# the segments to C&C

bool transmitted        # Flag to indicate whether the path segment has been
                        # transmitted

bool auxTransmitted

float32 theta_end       # End heading (provided explicitly)
float32 k_end           # End curvature
int32 seg_len           # Number of route points used to calculate the segment
float32 speed_limit     # Minimum speed of route points used (comes from MDF or -1)

# Other variables
float32 max_error
float32 max_smooth
float32 max_curv
int32 possible_points
bool bExitSegment
