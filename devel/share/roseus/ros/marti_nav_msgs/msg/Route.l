;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::Route)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'Route (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::ROUTE")
  (make-package "MARTI_NAV_MSGS::ROUTE"))

(in-package "ROS")
;;//! \htmlinclude Route.msg.html
(if (not (find-package "MARTI_COMMON_MSGS"))
  (ros::roseus-add-msgs "marti_common_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::Route
  :super ros::object
  :slots (_header _route_points _properties ))

(defmethod marti_nav_msgs::Route
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:route_points __route_points) (let (r) (dotimes (i 0) (push (instance marti_nav_msgs::RoutePoint :init) r)) r))
    ((:properties __properties) (let (r) (dotimes (i 0) (push (instance marti_common_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _route_points __route_points)
   (setq _properties __properties)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:route_points
   (&rest __route_points)
   (if (keywordp (car __route_points))
       (send* _route_points __route_points)
     (progn
       (if __route_points (setq _route_points (car __route_points)))
       _route_points)))
  (:properties
   (&rest __properties)
   (if (keywordp (car __properties))
       (send* _properties __properties)
     (progn
       (if __properties (setq _properties (car __properties)))
       _properties)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; marti_nav_msgs/RoutePoint[] _route_points
    (apply #'+ (send-all _route_points :serialization-length)) 4
    ;; marti_common_msgs/KeyValue[] _properties
    (apply #'+ (send-all _properties :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; marti_nav_msgs/RoutePoint[] _route_points
     (write-long (length _route_points) s)
     (dolist (elem _route_points)
       (send elem :serialize s)
       )
     ;; marti_common_msgs/KeyValue[] _properties
     (write-long (length _properties) s)
     (dolist (elem _properties)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; marti_nav_msgs/RoutePoint[] _route_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _route_points (let (r) (dotimes (i n) (push (instance marti_nav_msgs::RoutePoint :init) r)) r))
     (dolist (elem- _route_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; marti_common_msgs/KeyValue[] _properties
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _properties (let (r) (dotimes (i n) (push (instance marti_common_msgs::KeyValue :init) r)) r))
     (dolist (elem- _properties)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get marti_nav_msgs::Route :md5sum-) "626dfe06202116afac99e6de9fa42b3e")
(setf (get marti_nav_msgs::Route :datatype-) "marti_nav_msgs/Route")
(setf (get marti_nav_msgs::Route :definition-)
      "Header                         header
RoutePoint[]                   route_points
marti_common_msgs/KeyValue[]   properties

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
MSG: marti_nav_msgs/RoutePoint
geometry_msgs/Pose           pose
string                       id         # unique identifier for this point
marti_common_msgs/KeyValue[] properties

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
MSG: marti_common_msgs/KeyValue
# An arbitrary key-value pair

string key
string value

")



(provide :marti_nav_msgs/Route "626dfe06202116afac99e6de9fa42b3e")


