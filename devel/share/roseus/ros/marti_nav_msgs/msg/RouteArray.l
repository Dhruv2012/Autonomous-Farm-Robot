;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::RouteArray)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'RouteArray (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::ROUTEARRAY")
  (make-package "MARTI_NAV_MSGS::ROUTEARRAY"))

(in-package "ROS")
;;//! \htmlinclude RouteArray.msg.html
(if (not (find-package "MARTI_COMMON_MSGS"))
  (ros::roseus-add-msgs "marti_common_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::RouteArray
  :super ros::object
  :slots (_header _routes _properties ))

(defmethod marti_nav_msgs::RouteArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:routes __routes) (let (r) (dotimes (i 0) (push (instance marti_nav_msgs::Route :init) r)) r))
    ((:properties __properties) (let (r) (dotimes (i 0) (push (instance marti_common_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _routes __routes)
   (setq _properties __properties)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:routes
   (&rest __routes)
   (if (keywordp (car __routes))
       (send* _routes __routes)
     (progn
       (if __routes (setq _routes (car __routes)))
       _routes)))
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
    ;; marti_nav_msgs/Route[] _routes
    (apply #'+ (send-all _routes :serialization-length)) 4
    ;; marti_common_msgs/KeyValue[] _properties
    (apply #'+ (send-all _properties :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; marti_nav_msgs/Route[] _routes
     (write-long (length _routes) s)
     (dolist (elem _routes)
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
   ;; marti_nav_msgs/Route[] _routes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _routes (let (r) (dotimes (i n) (push (instance marti_nav_msgs::Route :init) r)) r))
     (dolist (elem- _routes)
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

(setf (get marti_nav_msgs::RouteArray :md5sum-) "a2f93d3e8f926d3456c8a282d8869e1f")
(setf (get marti_nav_msgs::RouteArray :datatype-) "marti_nav_msgs/RouteArray")
(setf (get marti_nav_msgs::RouteArray :definition-)
      "# list of muliple routes, for instance to support multi-lane roads

Header                         header

marti_nav_msgs/Route[]         routes

marti_common_msgs/KeyValue[]   properties # properties common to all routes

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
MSG: marti_nav_msgs/Route
Header                         header
RoutePoint[]                   route_points
marti_common_msgs/KeyValue[]   properties

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



(provide :marti_nav_msgs/RouteArray "a2f93d3e8f926d3456c8a282d8869e1f")


