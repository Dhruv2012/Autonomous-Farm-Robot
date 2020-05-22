;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::SaveRoute)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'SaveRoute (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::SAVEROUTE")
  (make-package "MARTI_NAV_MSGS::SAVEROUTE"))
(unless (find-package "MARTI_NAV_MSGS::SAVEROUTEREQUEST")
  (make-package "MARTI_NAV_MSGS::SAVEROUTEREQUEST"))
(unless (find-package "MARTI_NAV_MSGS::SAVEROUTERESPONSE")
  (make-package "MARTI_NAV_MSGS::SAVEROUTERESPONSE"))

(in-package "ROS")





(defclass marti_nav_msgs::SaveRouteRequest
  :super ros::object
  :slots (_name _guid _route _thumbnail ))

(defmethod marti_nav_msgs::SaveRouteRequest
  (:init
   (&key
    ((:name __name) "")
    ((:guid __guid) "")
    ((:route __route) (instance marti_nav_msgs::Route :init))
    ((:thumbnail __thumbnail) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _guid (string __guid))
   (setq _route __route)
   (setq _thumbnail (string __thumbnail))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:guid
   (&optional __guid)
   (if __guid (setq _guid __guid)) _guid)
  (:route
   (&rest __route)
   (if (keywordp (car __route))
       (send* _route __route)
     (progn
       (if __route (setq _route (car __route)))
       _route)))
  (:thumbnail
   (&optional __thumbnail)
   (if __thumbnail (setq _thumbnail __thumbnail)) _thumbnail)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _guid
    4 (length _guid)
    ;; marti_nav_msgs/Route _route
    (send _route :serialization-length)
    ;; string _thumbnail
    4 (length _thumbnail)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _guid
       (write-long (length _guid) s) (princ _guid s)
     ;; marti_nav_msgs/Route _route
       (send _route :serialize s)
     ;; string _thumbnail
       (write-long (length _thumbnail) s) (princ _thumbnail s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _guid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _guid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; marti_nav_msgs/Route _route
     (send _route :deserialize buf ptr-) (incf ptr- (send _route :serialization-length))
   ;; string _thumbnail
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _thumbnail (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marti_nav_msgs::SaveRouteResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marti_nav_msgs::SaveRouteResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marti_nav_msgs::SaveRoute
  :super ros::object
  :slots ())

(setf (get marti_nav_msgs::SaveRoute :md5sum-) "bf5efc6eabcf9ab3979d72995521ce7b")
(setf (get marti_nav_msgs::SaveRoute :datatype-) "marti_nav_msgs/SaveRoute")
(setf (get marti_nav_msgs::SaveRoute :request) marti_nav_msgs::SaveRouteRequest)
(setf (get marti_nav_msgs::SaveRoute :response) marti_nav_msgs::SaveRouteResponse)

(defmethod marti_nav_msgs::SaveRouteRequest
  (:response () (instance marti_nav_msgs::SaveRouteResponse :init)))

(setf (get marti_nav_msgs::SaveRouteRequest :md5sum-) "bf5efc6eabcf9ab3979d72995521ce7b")
(setf (get marti_nav_msgs::SaveRouteRequest :datatype-) "marti_nav_msgs/SaveRouteRequest")
(setf (get marti_nav_msgs::SaveRouteRequest :definition-)
      "string name
string guid
marti_nav_msgs/Route route
string thumbnail

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
---
bool success
string message

")

(setf (get marti_nav_msgs::SaveRouteResponse :md5sum-) "bf5efc6eabcf9ab3979d72995521ce7b")
(setf (get marti_nav_msgs::SaveRouteResponse :datatype-) "marti_nav_msgs/SaveRouteResponse")
(setf (get marti_nav_msgs::SaveRouteResponse :definition-)
      "string name
string guid
marti_nav_msgs/Route route
string thumbnail

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
---
bool success
string message

")



(provide :marti_nav_msgs/SaveRoute "bf5efc6eabcf9ab3979d72995521ce7b")


