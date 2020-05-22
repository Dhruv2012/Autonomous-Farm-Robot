;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::TrackedObject)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'TrackedObject (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::TRACKEDOBJECT")
  (make-package "MARTI_NAV_MSGS::TRACKEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude TrackedObject.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*VEHICLE*" (find-package "MARTI_NAV_MSGS::TRACKEDOBJECT"))
(shadow '*VEHICLE* (find-package "MARTI_NAV_MSGS::TRACKEDOBJECT"))
(defconstant marti_nav_msgs::TrackedObject::*VEHICLE* 0)
(intern "*PEDESTRIAN*" (find-package "MARTI_NAV_MSGS::TRACKEDOBJECT"))
(shadow '*PEDESTRIAN* (find-package "MARTI_NAV_MSGS::TRACKEDOBJECT"))
(defconstant marti_nav_msgs::TrackedObject::*PEDESTRIAN* 1)
(intern "*UNKNOWN*" (find-package "MARTI_NAV_MSGS::TRACKEDOBJECT"))
(shadow '*UNKNOWN* (find-package "MARTI_NAV_MSGS::TRACKEDOBJECT"))
(defconstant marti_nav_msgs::TrackedObject::*UNKNOWN* 255)
(defclass marti_nav_msgs::TrackedObject
  :super ros::object
  :slots (_header _id _pose _velocity _linear_acceleration _linear_acceleration_covariance _polygon _length _length_quality _width _width_quality _classification _classification_quality _existence_probability _age_duration _prediction_duration _active ))

(defmethod marti_nav_msgs::TrackedObject
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:pose __pose) (instance geometry_msgs::PoseWithCovariance :init))
    ((:velocity __velocity) (instance geometry_msgs::TwistWithCovariance :init))
    ((:linear_acceleration __linear_acceleration) (instance geometry_msgs::Vector3 :init))
    ((:linear_acceleration_covariance __linear_acceleration_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:polygon __polygon) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:length __length) 0.0)
    ((:length_quality __length_quality) 0.0)
    ((:width __width) 0.0)
    ((:width_quality __width_quality) 0.0)
    ((:classification __classification) 0)
    ((:classification_quality __classification_quality) 0.0)
    ((:existence_probability __existence_probability) 0.0)
    ((:age_duration __age_duration) (instance ros::time :init))
    ((:prediction_duration __prediction_duration) (instance ros::time :init))
    ((:active __active) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _pose __pose)
   (setq _velocity __velocity)
   (setq _linear_acceleration __linear_acceleration)
   (setq _linear_acceleration_covariance __linear_acceleration_covariance)
   (setq _polygon __polygon)
   (setq _length (float __length))
   (setq _length_quality (float __length_quality))
   (setq _width (float __width))
   (setq _width_quality (float __width_quality))
   (setq _classification (round __classification))
   (setq _classification_quality (float __classification_quality))
   (setq _existence_probability (float __existence_probability))
   (setq _age_duration __age_duration)
   (setq _prediction_duration __prediction_duration)
   (setq _active __active)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:linear_acceleration
   (&rest __linear_acceleration)
   (if (keywordp (car __linear_acceleration))
       (send* _linear_acceleration __linear_acceleration)
     (progn
       (if __linear_acceleration (setq _linear_acceleration (car __linear_acceleration)))
       _linear_acceleration)))
  (:linear_acceleration_covariance
   (&optional __linear_acceleration_covariance)
   (if __linear_acceleration_covariance (setq _linear_acceleration_covariance __linear_acceleration_covariance)) _linear_acceleration_covariance)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:length_quality
   (&optional __length_quality)
   (if __length_quality (setq _length_quality __length_quality)) _length_quality)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:width_quality
   (&optional __width_quality)
   (if __width_quality (setq _width_quality __width_quality)) _width_quality)
  (:classification
   (&optional __classification)
   (if __classification (setq _classification __classification)) _classification)
  (:classification_quality
   (&optional __classification_quality)
   (if __classification_quality (setq _classification_quality __classification_quality)) _classification_quality)
  (:existence_probability
   (&optional __existence_probability)
   (if __existence_probability (setq _existence_probability __existence_probability)) _existence_probability)
  (:age_duration
   (&optional __age_duration)
   (if __age_duration (setq _age_duration __age_duration)) _age_duration)
  (:prediction_duration
   (&optional __prediction_duration)
   (if __prediction_duration (setq _prediction_duration __prediction_duration)) _prediction_duration)
  (:active
   (&optional __active)
   (if __active (setq _active __active)) _active)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _id
    2
    ;; geometry_msgs/PoseWithCovariance _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/TwistWithCovariance _velocity
    (send _velocity :serialization-length)
    ;; geometry_msgs/Vector3 _linear_acceleration
    (send _linear_acceleration :serialization-length)
    ;; float64[9] _linear_acceleration_covariance
    (* 8    9)
    ;; geometry_msgs/Point[] _polygon
    (apply #'+ (send-all _polygon :serialization-length)) 4
    ;; float32 _length
    4
    ;; float32 _length_quality
    4
    ;; float32 _width
    4
    ;; float32 _width_quality
    4
    ;; uint8 _classification
    1
    ;; float32 _classification_quality
    4
    ;; float32 _existence_probability
    4
    ;; duration _age_duration
    8
    ;; duration _prediction_duration
    8
    ;; bool _active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _id
       (write-word _id s)
     ;; geometry_msgs/PoseWithCovariance _pose
       (send _pose :serialize s)
     ;; geometry_msgs/TwistWithCovariance _velocity
       (send _velocity :serialize s)
     ;; geometry_msgs/Vector3 _linear_acceleration
       (send _linear_acceleration :serialize s)
     ;; float64[9] _linear_acceleration_covariance
     (dotimes (i 9)
       (sys::poke (elt _linear_acceleration_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Point[] _polygon
     (write-long (length _polygon) s)
     (dolist (elem _polygon)
       (send elem :serialize s)
       )
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length_quality
       (sys::poke _length_quality (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width_quality
       (sys::poke _width_quality (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _classification
       (write-byte _classification s)
     ;; float32 _classification_quality
       (sys::poke _classification_quality (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _existence_probability
       (sys::poke _existence_probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; duration _age_duration
       (write-long (send _age_duration :sec) s) (write-long (send _age_duration :nsec) s)
     ;; duration _prediction_duration
       (write-long (send _prediction_duration :sec) s) (write-long (send _prediction_duration :nsec) s)
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/PoseWithCovariance _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/TwistWithCovariance _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; geometry_msgs/Vector3 _linear_acceleration
     (send _linear_acceleration :deserialize buf ptr-) (incf ptr- (send _linear_acceleration :serialization-length))
   ;; float64[9] _linear_acceleration_covariance
   (dotimes (i (length _linear_acceleration_covariance))
     (setf (elt _linear_acceleration_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; geometry_msgs/Point[] _polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _polygon)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length_quality
     (setq _length_quality (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width_quality
     (setq _width_quality (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _classification
     (setq _classification (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _classification_quality
     (setq _classification_quality (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _existence_probability
     (setq _existence_probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; duration _age_duration
     (send _age_duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _age_duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _prediction_duration
     (send _prediction_duration :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _prediction_duration :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get marti_nav_msgs::TrackedObject :md5sum-) "cbb29999f8b089f4f41612b25a8b7540")
(setf (get marti_nav_msgs::TrackedObject :datatype-) "marti_nav_msgs/TrackedObject")
(setf (get marti_nav_msgs::TrackedObject :definition-)
      "uint8 VEHICLE=0
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



(provide :marti_nav_msgs/TrackedObject "cbb29999f8b089f4f41612b25a8b7540")


