;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::RoutePosition)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'RoutePosition (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::ROUTEPOSITION")
  (make-package "MARTI_NAV_MSGS::ROUTEPOSITION"))

(in-package "ROS")
;;//! \htmlinclude RoutePosition.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::RoutePosition
  :super ros::object
  :slots (_header _route_id _id _distance ))

(defmethod marti_nav_msgs::RoutePosition
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:route_id __route_id) "")
    ((:id __id) "")
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _route_id (string __route_id))
   (setq _id (string __id))
   (setq _distance (float __distance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:route_id
   (&optional __route_id)
   (if __route_id (setq _route_id __route_id)) _route_id)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _route_id
    4 (length _route_id)
    ;; string _id
    4 (length _id)
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _route_id
       (write-long (length _route_id) s) (princ _route_id s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _route_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _route_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get marti_nav_msgs::RoutePosition :md5sum-) "7b490dd73143bf1ce8ca12b9478c3d9d")
(setf (get marti_nav_msgs::RoutePosition :datatype-) "marti_nav_msgs/RoutePosition")
(setf (get marti_nav_msgs::RoutePosition :definition-)
      "# Position along route

Header  header   # only stamp used
string  route_id # unique ID of the corresponding route
string  id       # unique ID of nearest point
float32 distance # forward along route, in meters from point identified by id
                 # field (negative values indicate the distance is backward
                 # along the route)

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



(provide :marti_nav_msgs/RoutePosition "7b490dd73143bf1ce8ca12b9478c3d9d")


