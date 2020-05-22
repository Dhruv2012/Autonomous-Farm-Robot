;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::ObstacleArray)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'ObstacleArray (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::OBSTACLEARRAY")
  (make-package "MARTI_NAV_MSGS::OBSTACLEARRAY"))

(in-package "ROS")
;;//! \htmlinclude ObstacleArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::ObstacleArray
  :super ros::object
  :slots (_header _obstacles ))

(defmethod marti_nav_msgs::ObstacleArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:obstacles __obstacles) (let (r) (dotimes (i 0) (push (instance marti_nav_msgs::Obstacle :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _obstacles __obstacles)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:obstacles
   (&rest __obstacles)
   (if (keywordp (car __obstacles))
       (send* _obstacles __obstacles)
     (progn
       (if __obstacles (setq _obstacles (car __obstacles)))
       _obstacles)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; marti_nav_msgs/Obstacle[] _obstacles
    (apply #'+ (send-all _obstacles :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; marti_nav_msgs/Obstacle[] _obstacles
     (write-long (length _obstacles) s)
     (dolist (elem _obstacles)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; marti_nav_msgs/Obstacle[] _obstacles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacles (let (r) (dotimes (i n) (push (instance marti_nav_msgs::Obstacle :init) r)) r))
     (dolist (elem- _obstacles)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get marti_nav_msgs::ObstacleArray :md5sum-) "2af80afb1cab2b611e3a96daa3ee0f01")
(setf (get marti_nav_msgs::ObstacleArray :datatype-) "marti_nav_msgs/ObstacleArray")
(setf (get marti_nav_msgs::ObstacleArray :definition-)
      "# This message is used to communicate the position of one or more
# obstacles.

Header header
# The header defines the frame that the obstacles are defined in.

Obstacle[] obstacles
# List of obstacles

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
MSG: marti_nav_msgs/Obstacle
string id
# Unique id for the obstacle or empty if not used.

geometry_msgs/Pose pose
# The pose of the origin of the obstacle.

geometry_msgs/Point[] polygon
# A list of points that define the obstacle's geometry in horizontal
# plane relative to the obstacle's pose.  The polygon is implicitly
# closed by a segment between the last and first points.

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

")



(provide :marti_nav_msgs/ObstacleArray "2af80afb1cab2b611e3a96daa3ee0f01")


