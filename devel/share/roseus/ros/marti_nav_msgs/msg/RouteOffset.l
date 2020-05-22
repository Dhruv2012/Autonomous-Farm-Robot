;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::RouteOffset)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'RouteOffset (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::ROUTEOFFSET")
  (make-package "MARTI_NAV_MSGS::ROUTEOFFSET"))

(in-package "ROS")
;;//! \htmlinclude RouteOffset.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::RouteOffset
  :super ros::object
  :slots (_header _relative_pose _route_position ))

(defmethod marti_nav_msgs::RouteOffset
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:relative_pose __relative_pose) (instance geometry_msgs::Pose :init))
    ((:route_position __route_position) (instance marti_nav_msgs::RoutePosition :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _relative_pose __relative_pose)
   (setq _route_position __route_position)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:relative_pose
   (&rest __relative_pose)
   (if (keywordp (car __relative_pose))
       (send* _relative_pose __relative_pose)
     (progn
       (if __relative_pose (setq _relative_pose (car __relative_pose)))
       _relative_pose)))
  (:route_position
   (&rest __route_position)
   (if (keywordp (car __route_position))
       (send* _route_position __route_position)
     (progn
       (if __route_position (setq _route_position (car __route_position)))
       _route_position)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _relative_pose
    (send _relative_pose :serialization-length)
    ;; marti_nav_msgs/RoutePosition _route_position
    (send _route_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _relative_pose
       (send _relative_pose :serialize s)
     ;; marti_nav_msgs/RoutePosition _route_position
       (send _route_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _relative_pose
     (send _relative_pose :deserialize buf ptr-) (incf ptr- (send _relative_pose :serialization-length))
   ;; marti_nav_msgs/RoutePosition _route_position
     (send _route_position :deserialize buf ptr-) (incf ptr- (send _route_position :serialization-length))
   ;;
   self)
  )

(setf (get marti_nav_msgs::RouteOffset :md5sum-) "69208bbf68ef432cb1b3530d6fdda6cf")
(setf (get marti_nav_msgs::RouteOffset :datatype-) "marti_nav_msgs/RouteOffset")
(setf (get marti_nav_msgs::RouteOffset :definition-)
      "# Gives a position and orientation relative to a position on a route

Header header                                 # only stamp used

geometry_msgs/Pose relative_pose              # pose relative to position on route
marti_nav_msgs/RoutePosition route_position   # position on route

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
MSG: marti_nav_msgs/RoutePosition
# Position along route

Header  header   # only stamp used
string  route_id # unique ID of the corresponding route
string  id       # unique ID of nearest point
float32 distance # forward along route, in meters from point identified by id
                 # field (negative values indicate the distance is backward
                 # along the route)

")



(provide :marti_nav_msgs/RouteOffset "69208bbf68ef432cb1b3530d6fdda6cf")


