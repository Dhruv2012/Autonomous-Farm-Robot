;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::PathPlanning)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'PathPlanning (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::PATHPLANNING")
  (make-package "MARTI_NAV_MSGS::PATHPLANNING"))

(in-package "ROS")
;;//! \htmlinclude PathPlanning.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::PathPlanning
  :super ros::object
  :slots (_header _segment_type _length _start_speed _end_speed _startx _starty _endx _endy _theta0 _a1 _a2 _k0 _c1 _c2 _behavior _creep _acc _reverse _vehicle_track _transmitted _auxTransmitted _theta_end _k_end _seg_len _speed_limit _max_error _max_smooth _max_curv _possible_points _bExitSegment ))

(defmethod marti_nav_msgs::PathPlanning
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:segment_type __segment_type) 0)
    ((:length __length) 0.0)
    ((:start_speed __start_speed) 0.0)
    ((:end_speed __end_speed) 0.0)
    ((:startx __startx) 0.0)
    ((:starty __starty) 0.0)
    ((:endx __endx) 0.0)
    ((:endy __endy) 0.0)
    ((:theta0 __theta0) 0.0)
    ((:a1 __a1) 0.0)
    ((:a2 __a2) 0.0)
    ((:k0 __k0) 0.0)
    ((:c1 __c1) 0.0)
    ((:c2 __c2) 0.0)
    ((:behavior __behavior) 0)
    ((:creep __creep) 0)
    ((:acc __acc) 0)
    ((:reverse __reverse) 0)
    ((:vehicle_track __vehicle_track) 0)
    ((:transmitted __transmitted) nil)
    ((:auxTransmitted __auxTransmitted) nil)
    ((:theta_end __theta_end) 0.0)
    ((:k_end __k_end) 0.0)
    ((:seg_len __seg_len) 0)
    ((:speed_limit __speed_limit) 0.0)
    ((:max_error __max_error) 0.0)
    ((:max_smooth __max_smooth) 0.0)
    ((:max_curv __max_curv) 0.0)
    ((:possible_points __possible_points) 0)
    ((:bExitSegment __bExitSegment) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _segment_type (round __segment_type))
   (setq _length (float __length))
   (setq _start_speed (float __start_speed))
   (setq _end_speed (float __end_speed))
   (setq _startx (float __startx))
   (setq _starty (float __starty))
   (setq _endx (float __endx))
   (setq _endy (float __endy))
   (setq _theta0 (float __theta0))
   (setq _a1 (float __a1))
   (setq _a2 (float __a2))
   (setq _k0 (float __k0))
   (setq _c1 (float __c1))
   (setq _c2 (float __c2))
   (setq _behavior (round __behavior))
   (setq _creep (round __creep))
   (setq _acc (round __acc))
   (setq _reverse (round __reverse))
   (setq _vehicle_track (round __vehicle_track))
   (setq _transmitted __transmitted)
   (setq _auxTransmitted __auxTransmitted)
   (setq _theta_end (float __theta_end))
   (setq _k_end (float __k_end))
   (setq _seg_len (round __seg_len))
   (setq _speed_limit (float __speed_limit))
   (setq _max_error (float __max_error))
   (setq _max_smooth (float __max_smooth))
   (setq _max_curv (float __max_curv))
   (setq _possible_points (round __possible_points))
   (setq _bExitSegment __bExitSegment)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:segment_type
   (&optional __segment_type)
   (if __segment_type (setq _segment_type __segment_type)) _segment_type)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:start_speed
   (&optional __start_speed)
   (if __start_speed (setq _start_speed __start_speed)) _start_speed)
  (:end_speed
   (&optional __end_speed)
   (if __end_speed (setq _end_speed __end_speed)) _end_speed)
  (:startx
   (&optional __startx)
   (if __startx (setq _startx __startx)) _startx)
  (:starty
   (&optional __starty)
   (if __starty (setq _starty __starty)) _starty)
  (:endx
   (&optional __endx)
   (if __endx (setq _endx __endx)) _endx)
  (:endy
   (&optional __endy)
   (if __endy (setq _endy __endy)) _endy)
  (:theta0
   (&optional __theta0)
   (if __theta0 (setq _theta0 __theta0)) _theta0)
  (:a1
   (&optional __a1)
   (if __a1 (setq _a1 __a1)) _a1)
  (:a2
   (&optional __a2)
   (if __a2 (setq _a2 __a2)) _a2)
  (:k0
   (&optional __k0)
   (if __k0 (setq _k0 __k0)) _k0)
  (:c1
   (&optional __c1)
   (if __c1 (setq _c1 __c1)) _c1)
  (:c2
   (&optional __c2)
   (if __c2 (setq _c2 __c2)) _c2)
  (:behavior
   (&optional __behavior)
   (if __behavior (setq _behavior __behavior)) _behavior)
  (:creep
   (&optional __creep)
   (if __creep (setq _creep __creep)) _creep)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:reverse
   (&optional __reverse)
   (if __reverse (setq _reverse __reverse)) _reverse)
  (:vehicle_track
   (&optional __vehicle_track)
   (if __vehicle_track (setq _vehicle_track __vehicle_track)) _vehicle_track)
  (:transmitted
   (&optional __transmitted)
   (if __transmitted (setq _transmitted __transmitted)) _transmitted)
  (:auxTransmitted
   (&optional __auxTransmitted)
   (if __auxTransmitted (setq _auxTransmitted __auxTransmitted)) _auxTransmitted)
  (:theta_end
   (&optional __theta_end)
   (if __theta_end (setq _theta_end __theta_end)) _theta_end)
  (:k_end
   (&optional __k_end)
   (if __k_end (setq _k_end __k_end)) _k_end)
  (:seg_len
   (&optional __seg_len)
   (if __seg_len (setq _seg_len __seg_len)) _seg_len)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:max_error
   (&optional __max_error)
   (if __max_error (setq _max_error __max_error)) _max_error)
  (:max_smooth
   (&optional __max_smooth)
   (if __max_smooth (setq _max_smooth __max_smooth)) _max_smooth)
  (:max_curv
   (&optional __max_curv)
   (if __max_curv (setq _max_curv __max_curv)) _max_curv)
  (:possible_points
   (&optional __possible_points)
   (if __possible_points (setq _possible_points __possible_points)) _possible_points)
  (:bExitSegment
   (&optional __bExitSegment)
   (if __bExitSegment (setq _bExitSegment __bExitSegment)) _bExitSegment)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _segment_type
    4
    ;; float32 _length
    4
    ;; float32 _start_speed
    4
    ;; float32 _end_speed
    4
    ;; float32 _startx
    4
    ;; float32 _starty
    4
    ;; float32 _endx
    4
    ;; float32 _endy
    4
    ;; float32 _theta0
    4
    ;; float32 _a1
    4
    ;; float32 _a2
    4
    ;; float32 _k0
    4
    ;; float32 _c1
    4
    ;; float32 _c2
    4
    ;; int32 _behavior
    4
    ;; int32 _creep
    4
    ;; int32 _acc
    4
    ;; int32 _reverse
    4
    ;; int32 _vehicle_track
    4
    ;; bool _transmitted
    1
    ;; bool _auxTransmitted
    1
    ;; float32 _theta_end
    4
    ;; float32 _k_end
    4
    ;; int32 _seg_len
    4
    ;; float32 _speed_limit
    4
    ;; float32 _max_error
    4
    ;; float32 _max_smooth
    4
    ;; float32 _max_curv
    4
    ;; int32 _possible_points
    4
    ;; bool _bExitSegment
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _segment_type
       (write-long _segment_type s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _start_speed
       (sys::poke _start_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_speed
       (sys::poke _end_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _startx
       (sys::poke _startx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _starty
       (sys::poke _starty (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _endx
       (sys::poke _endx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _endy
       (sys::poke _endy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta0
       (sys::poke _theta0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a1
       (sys::poke _a1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _a2
       (sys::poke _a2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _k0
       (sys::poke _k0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c1
       (sys::poke _c1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _c2
       (sys::poke _c2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _behavior
       (write-long _behavior s)
     ;; int32 _creep
       (write-long _creep s)
     ;; int32 _acc
       (write-long _acc s)
     ;; int32 _reverse
       (write-long _reverse s)
     ;; int32 _vehicle_track
       (write-long _vehicle_track s)
     ;; bool _transmitted
       (if _transmitted (write-byte -1 s) (write-byte 0 s))
     ;; bool _auxTransmitted
       (if _auxTransmitted (write-byte -1 s) (write-byte 0 s))
     ;; float32 _theta_end
       (sys::poke _theta_end (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _k_end
       (sys::poke _k_end (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _seg_len
       (write-long _seg_len s)
     ;; float32 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_error
       (sys::poke _max_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_smooth
       (sys::poke _max_smooth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_curv
       (sys::poke _max_curv (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _possible_points
       (write-long _possible_points s)
     ;; bool _bExitSegment
       (if _bExitSegment (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _segment_type
     (setq _segment_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _start_speed
     (setq _start_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_speed
     (setq _end_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _startx
     (setq _startx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _starty
     (setq _starty (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _endx
     (setq _endx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _endy
     (setq _endy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta0
     (setq _theta0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a1
     (setq _a1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _a2
     (setq _a2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _k0
     (setq _k0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c1
     (setq _c1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _c2
     (setq _c2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _behavior
     (setq _behavior (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _creep
     (setq _creep (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _acc
     (setq _acc (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reverse
     (setq _reverse (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vehicle_track
     (setq _vehicle_track (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _transmitted
     (setq _transmitted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _auxTransmitted
     (setq _auxTransmitted (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _theta_end
     (setq _theta_end (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _k_end
     (setq _k_end (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _seg_len
     (setq _seg_len (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_error
     (setq _max_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_smooth
     (setq _max_smooth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_curv
     (setq _max_curv (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _possible_points
     (setq _possible_points (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _bExitSegment
     (setq _bExitSegment (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get marti_nav_msgs::PathPlanning :md5sum-) "275fd723a6af7fd7f102a3f07eca0829")
(setf (get marti_nav_msgs::PathPlanning :datatype-) "marti_nav_msgs/PathPlanning")
(setf (get marti_nav_msgs::PathPlanning :definition-)
      "Header header

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

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :marti_nav_msgs/PathPlanning "275fd723a6af7fd7f102a3f07eca0829")


