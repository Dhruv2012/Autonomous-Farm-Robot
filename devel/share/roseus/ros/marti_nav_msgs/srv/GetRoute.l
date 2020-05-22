;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::GetRoute)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'GetRoute (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::GETROUTE")
  (make-package "MARTI_NAV_MSGS::GETROUTE"))
(unless (find-package "MARTI_NAV_MSGS::GETROUTEREQUEST")
  (make-package "MARTI_NAV_MSGS::GETROUTEREQUEST"))
(unless (find-package "MARTI_NAV_MSGS::GETROUTERESPONSE")
  (make-package "MARTI_NAV_MSGS::GETROUTERESPONSE"))

(in-package "ROS")





(defclass marti_nav_msgs::GetRouteRequest
  :super ros::object
  :slots (_guid ))

(defmethod marti_nav_msgs::GetRouteRequest
  (:init
   (&key
    ((:guid __guid) "")
    )
   (send-super :init)
   (setq _guid (string __guid))
   self)
  (:guid
   (&optional __guid)
   (if __guid (setq _guid __guid)) _guid)
  (:serialization-length
   ()
   (+
    ;; string _guid
    4 (length _guid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _guid
       (write-long (length _guid) s) (princ _guid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _guid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _guid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marti_nav_msgs::GetRouteResponse
  :super ros::object
  :slots (_route _success _message ))

(defmethod marti_nav_msgs::GetRouteResponse
  (:init
   (&key
    ((:route __route) (instance marti_nav_msgs::Route :init))
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _route __route)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:route
   (&rest __route)
   (if (keywordp (car __route))
       (send* _route __route)
     (progn
       (if __route (setq _route (car __route)))
       _route)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; marti_nav_msgs/Route _route
    (send _route :serialization-length)
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; marti_nav_msgs/Route _route
       (send _route :serialize s)
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; marti_nav_msgs/Route _route
     (send _route :deserialize buf ptr-) (incf ptr- (send _route :serialization-length))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marti_nav_msgs::GetRoute
  :super ros::object
  :slots ())

(setf (get marti_nav_msgs::GetRoute :md5sum-) "9f5c6eaa0139ef1e2690cdfe037b8e5e")
(setf (get marti_nav_msgs::GetRoute :datatype-) "marti_nav_msgs/GetRoute")
(setf (get marti_nav_msgs::GetRoute :request) marti_nav_msgs::GetRouteRequest)
(setf (get marti_nav_msgs::GetRoute :response) marti_nav_msgs::GetRouteResponse)

(defmethod marti_nav_msgs::GetRouteRequest
  (:response () (instance marti_nav_msgs::GetRouteResponse :init)))

(setf (get marti_nav_msgs::GetRouteRequest :md5sum-) "9f5c6eaa0139ef1e2690cdfe037b8e5e")
(setf (get marti_nav_msgs::GetRouteRequest :datatype-) "marti_nav_msgs/GetRouteRequest")
(setf (get marti_nav_msgs::GetRouteRequest :definition-)
      "

string guid

---

marti_nav_msgs/Route route

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

(setf (get marti_nav_msgs::GetRouteResponse :md5sum-) "9f5c6eaa0139ef1e2690cdfe037b8e5e")
(setf (get marti_nav_msgs::GetRouteResponse :datatype-) "marti_nav_msgs/GetRouteResponse")
(setf (get marti_nav_msgs::GetRouteResponse :definition-)
      "

string guid

---

marti_nav_msgs/Route route

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



(provide :marti_nav_msgs/GetRoute "9f5c6eaa0139ef1e2690cdfe037b8e5e")


