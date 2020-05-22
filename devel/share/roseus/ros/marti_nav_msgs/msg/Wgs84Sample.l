;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::Wgs84Sample)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'Wgs84Sample (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::WGS84SAMPLE")
  (make-package "MARTI_NAV_MSGS::WGS84SAMPLE"))

(in-package "ROS")
;;//! \htmlinclude Wgs84Sample.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::Wgs84Sample
  :super ros::object
  :slots (_header _odom _wgs84 _wgs84_covariance ))

(defmethod marti_nav_msgs::Wgs84Sample
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:odom __odom) (instance geometry_msgs::Point :init))
    ((:wgs84 __wgs84) (instance geometry_msgs::Point :init))
    ((:wgs84_covariance __wgs84_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _odom __odom)
   (setq _wgs84 __wgs84)
   (setq _wgs84_covariance __wgs84_covariance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:odom
   (&rest __odom)
   (if (keywordp (car __odom))
       (send* _odom __odom)
     (progn
       (if __odom (setq _odom (car __odom)))
       _odom)))
  (:wgs84
   (&rest __wgs84)
   (if (keywordp (car __wgs84))
       (send* _wgs84 __wgs84)
     (progn
       (if __wgs84 (setq _wgs84 (car __wgs84)))
       _wgs84)))
  (:wgs84_covariance
   (&optional __wgs84_covariance)
   (if __wgs84_covariance (setq _wgs84_covariance __wgs84_covariance)) _wgs84_covariance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _odom
    (send _odom :serialization-length)
    ;; geometry_msgs/Point _wgs84
    (send _wgs84 :serialization-length)
    ;; float64[9] _wgs84_covariance
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _odom
       (send _odom :serialize s)
     ;; geometry_msgs/Point _wgs84
       (send _wgs84 :serialize s)
     ;; float64[9] _wgs84_covariance
     (dotimes (i 9)
       (sys::poke (elt _wgs84_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _odom
     (send _odom :deserialize buf ptr-) (incf ptr- (send _odom :serialization-length))
   ;; geometry_msgs/Point _wgs84
     (send _wgs84 :deserialize buf ptr-) (incf ptr- (send _wgs84 :serialization-length))
   ;; float64[9] _wgs84_covariance
   (dotimes (i (length _wgs84_covariance))
     (setf (elt _wgs84_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get marti_nav_msgs::Wgs84Sample :md5sum-) "5241cb1ac52fc7a58f710c9a9774badc")
(setf (get marti_nav_msgs::Wgs84Sample :datatype-) "marti_nav_msgs/Wgs84Sample")
(setf (get marti_nav_msgs::Wgs84Sample :definition-)
      "# This message contains an absolute position measurement (in
# spherical/WGS-84 coordinates) and the corresponding sensor
# (e.g. antenna) location in a vehicle's relative odometry coordinate
# frame.

Header header
# The header contains the /tf name of the relative odometry frame and
# the timestamp of the measurement.

geometry_msgs/Point odom
# The position of the sample in the relative odometry frame.

geometry_msgs/Point wgs84
# The WGS84 measurement (x = longitude in decimal degrees, y =
# latitude in decimal degrees, z = altitude over the reference
# ellipsoid in meters)

float64[9] wgs84_covariance
# An estimate of WGS-84 measurement's covariance.

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :marti_nav_msgs/Wgs84Sample "5241cb1ac52fc7a58f710c9a9774badc")


