;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::PlanRoute)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'PlanRoute (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::PLANROUTE")
  (make-package "MARTI_NAV_MSGS::PLANROUTE"))
(unless (find-package "MARTI_NAV_MSGS::PLANROUTEREQUEST")
  (make-package "MARTI_NAV_MSGS::PLANROUTEREQUEST"))
(unless (find-package "MARTI_NAV_MSGS::PLANROUTERESPONSE")
  (make-package "MARTI_NAV_MSGS::PLANROUTERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass marti_nav_msgs::PlanRouteRequest
  :super ros::object
  :slots (_header _waypoints _plan_from_vehicle ))

(defmethod marti_nav_msgs::PlanRouteRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:waypoints __waypoints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    ((:plan_from_vehicle __plan_from_vehicle) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _waypoints __waypoints)
   (setq _plan_from_vehicle __plan_from_vehicle)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:plan_from_vehicle
   (&optional __plan_from_vehicle)
   (if __plan_from_vehicle (setq _plan_from_vehicle __plan_from_vehicle)) _plan_from_vehicle)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ;; bool _plan_from_vehicle
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;; bool _plan_from_vehicle
       (if _plan_from_vehicle (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _plan_from_vehicle
     (setq _plan_from_vehicle (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass marti_nav_msgs::PlanRouteResponse
  :super ros::object
  :slots (_route _success _message ))

(defmethod marti_nav_msgs::PlanRouteResponse
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

(defclass marti_nav_msgs::PlanRoute
  :super ros::object
  :slots ())

(setf (get marti_nav_msgs::PlanRoute :md5sum-) "fc2df8428924c01b72b355fa8fd38799")
(setf (get marti_nav_msgs::PlanRoute :datatype-) "marti_nav_msgs/PlanRoute")
(setf (get marti_nav_msgs::PlanRoute :request) marti_nav_msgs::PlanRouteRequest)
(setf (get marti_nav_msgs::PlanRoute :response) marti_nav_msgs::PlanRouteResponse)

(defmethod marti_nav_msgs::PlanRouteRequest
  (:response () (instance marti_nav_msgs::PlanRouteResponse :init)))

(setf (get marti_nav_msgs::PlanRouteRequest :md5sum-) "fc2df8428924c01b72b355fa8fd38799")
(setf (get marti_nav_msgs::PlanRouteRequest :datatype-) "marti_nav_msgs/PlanRouteRequest")
(setf (get marti_nav_msgs::PlanRouteRequest :definition-)
      "Header header


geometry_msgs/Pose[] waypoints
bool plan_from_vehicle


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
---

Route  route

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

(setf (get marti_nav_msgs::PlanRouteResponse :md5sum-) "fc2df8428924c01b72b355fa8fd38799")
(setf (get marti_nav_msgs::PlanRouteResponse :datatype-) "marti_nav_msgs/PlanRouteResponse")
(setf (get marti_nav_msgs::PlanRouteResponse :definition-)
      "Header header


geometry_msgs/Pose[] waypoints
bool plan_from_vehicle


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
---

Route  route

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



(provide :marti_nav_msgs/PlanRoute "fc2df8428924c01b72b355fa8fd38799")


