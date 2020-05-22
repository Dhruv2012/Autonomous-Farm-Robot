;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::GetRouteList)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'GetRouteList (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::GETROUTELIST")
  (make-package "MARTI_NAV_MSGS::GETROUTELIST"))
(unless (find-package "MARTI_NAV_MSGS::GETROUTELISTREQUEST")
  (make-package "MARTI_NAV_MSGS::GETROUTELISTREQUEST"))
(unless (find-package "MARTI_NAV_MSGS::GETROUTELISTRESPONSE")
  (make-package "MARTI_NAV_MSGS::GETROUTELISTRESPONSE"))

(in-package "ROS")





(defclass marti_nav_msgs::GetRouteListRequest
  :super ros::object
  :slots ())

(defmethod marti_nav_msgs::GetRouteListRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass marti_nav_msgs::GetRouteListResponse
  :super ros::object
  :slots (_routes _success _message ))

(defmethod marti_nav_msgs::GetRouteListResponse
  (:init
   (&key
    ((:routes __routes) (let (r) (dotimes (i 0) (push (instance marti_nav_msgs::Route :init) r)) r))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _routes __routes)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:routes
   (&rest __routes)
   (if (keywordp (car __routes))
       (send* _routes __routes)
     (progn
       (if __routes (setq _routes (car __routes)))
       _routes)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; marti_nav_msgs/Route[] _routes
    (apply #'+ (send-all _routes :serialization-length)) 4
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; marti_nav_msgs/Route[] _routes
     (write-long (length _routes) s)
     (dolist (elem _routes)
       (send elem :serialize s)
       )
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; marti_nav_msgs/Route[] _routes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _routes (let (r) (dotimes (i n) (push (instance marti_nav_msgs::Route :init) r)) r))
     (dolist (elem- _routes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marti_nav_msgs::GetRouteList
  :super ros::object
  :slots ())

(setf (get marti_nav_msgs::GetRouteList :md5sum-) "24b443520442ddc540d0fd59f35403a5")
(setf (get marti_nav_msgs::GetRouteList :datatype-) "marti_nav_msgs/GetRouteList")
(setf (get marti_nav_msgs::GetRouteList :request) marti_nav_msgs::GetRouteListRequest)
(setf (get marti_nav_msgs::GetRouteList :response) marti_nav_msgs::GetRouteListResponse)

(defmethod marti_nav_msgs::GetRouteListRequest
  (:response () (instance marti_nav_msgs::GetRouteListResponse :init)))

(setf (get marti_nav_msgs::GetRouteListRequest :md5sum-) "24b443520442ddc540d0fd59f35403a5")
(setf (get marti_nav_msgs::GetRouteListRequest :datatype-) "marti_nav_msgs/GetRouteListRequest")
(setf (get marti_nav_msgs::GetRouteListRequest :definition-)
      "

---
marti_nav_msgs/Route[] routes

bool success
string message


================================================================================
MSG: marti_nav_msgs/Route
Header                         header
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

(setf (get marti_nav_msgs::GetRouteListResponse :md5sum-) "24b443520442ddc540d0fd59f35403a5")
(setf (get marti_nav_msgs::GetRouteListResponse :datatype-) "marti_nav_msgs/GetRouteListResponse")
(setf (get marti_nav_msgs::GetRouteListResponse :definition-)
      "

---
marti_nav_msgs/Route[] routes

bool success
string message


================================================================================
MSG: marti_nav_msgs/Route
Header                         header
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



(provide :marti_nav_msgs/GetRouteList "24b443520442ddc540d0fd59f35403a5")


