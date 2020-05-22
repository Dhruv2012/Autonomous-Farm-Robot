;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::RoutePoint)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'RoutePoint (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::ROUTEPOINT")
  (make-package "MARTI_NAV_MSGS::ROUTEPOINT"))

(in-package "ROS")
;;//! \htmlinclude RoutePoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "MARTI_COMMON_MSGS"))
  (ros::roseus-add-msgs "marti_common_msgs"))


(defclass marti_nav_msgs::RoutePoint
  :super ros::object
  :slots (_pose _id _properties ))

(defmethod marti_nav_msgs::RoutePoint
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:id __id) "")
    ((:properties __properties) (let (r) (dotimes (i 0) (push (instance marti_common_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _id (string __id))
   (setq _properties __properties)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
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
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; string _id
    4 (length _id)
    ;; marti_common_msgs/KeyValue[] _properties
    (apply #'+ (send-all _properties :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; marti_common_msgs/KeyValue[] _properties
     (write-long (length _properties) s)
     (dolist (elem _properties)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
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

(setf (get marti_nav_msgs::RoutePoint :md5sum-) "f1f627df35e7330c4ee0337ac3a4de9c")
(setf (get marti_nav_msgs::RoutePoint :datatype-) "marti_nav_msgs/RoutePoint")
(setf (get marti_nav_msgs::RoutePoint :definition-)
      "geometry_msgs/Pose           pose
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



(provide :marti_nav_msgs/RoutePoint "f1f627df35e7330c4ee0337ac3a4de9c")


