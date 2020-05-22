;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::TrackedObjectArray)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'TrackedObjectArray (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::TRACKEDOBJECTARRAY")
  (make-package "MARTI_NAV_MSGS::TRACKEDOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude TrackedObjectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::TrackedObjectArray
  :super ros::object
  :slots (_header _objects ))

(defmethod marti_nav_msgs::TrackedObjectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance marti_nav_msgs::TrackedObject :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; marti_nav_msgs/TrackedObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; marti_nav_msgs/TrackedObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; marti_nav_msgs/TrackedObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance marti_nav_msgs::TrackedObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get marti_nav_msgs::TrackedObjectArray :md5sum-) "eeceef8756dddeb96eb4d6e607b3e5fd")
(setf (get marti_nav_msgs::TrackedObjectArray :datatype-) "marti_nav_msgs/TrackedObjectArray")
(setf (get marti_nav_msgs::TrackedObjectArray :definition-)
      "# This message is used to communicate tracking data for one or more objects.

Header header            # The frame that the objects are defined in.

TrackedObject[] objects  # The tracked objects.

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

================================================================================
MSG: marti_nav_msgs/TrackedObject
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

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :marti_nav_msgs/TrackedObjectArray "eeceef8756dddeb96eb4d6e607b3e5fd")


