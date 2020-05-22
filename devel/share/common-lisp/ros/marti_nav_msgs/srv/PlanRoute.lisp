; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-srv)


;//! \htmlinclude PlanRoute-request.msg.html

(cl:defclass <PlanRoute-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (plan_from_vehicle
    :reader plan_from_vehicle
    :initarg :plan_from_vehicle
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlanRoute-request (<PlanRoute-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanRoute-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanRoute-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<PlanRoute-request> is deprecated: use marti_nav_msgs-srv:PlanRoute-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanRoute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:header-val is deprecated.  Use marti_nav_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <PlanRoute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:waypoints-val is deprecated.  Use marti_nav_msgs-srv:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'plan_from_vehicle-val :lambda-list '(m))
(cl:defmethod plan_from_vehicle-val ((m <PlanRoute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:plan_from_vehicle-val is deprecated.  Use marti_nav_msgs-srv:plan_from_vehicle instead.")
  (plan_from_vehicle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanRoute-request>) ostream)
  "Serializes a message object of type '<PlanRoute-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'plan_from_vehicle) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanRoute-request>) istream)
  "Deserializes a message object of type '<PlanRoute-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'plan_from_vehicle) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanRoute-request>)))
  "Returns string type for a service object of type '<PlanRoute-request>"
  "marti_nav_msgs/PlanRouteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanRoute-request)))
  "Returns string type for a service object of type 'PlanRoute-request"
  "marti_nav_msgs/PlanRouteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanRoute-request>)))
  "Returns md5sum for a message object of type '<PlanRoute-request>"
  "fc2df8428924c01b72b355fa8fd38799")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanRoute-request)))
  "Returns md5sum for a message object of type 'PlanRoute-request"
  "fc2df8428924c01b72b355fa8fd38799")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanRoute-request>)))
  "Returns full string definition for message of type '<PlanRoute-request>"
  (cl:format cl:nil "Header header~%~%~%geometry_msgs/Pose[] waypoints~%bool plan_from_vehicle~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanRoute-request)))
  "Returns full string definition for message of type 'PlanRoute-request"
  (cl:format cl:nil "Header header~%~%~%geometry_msgs/Pose[] waypoints~%bool plan_from_vehicle~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanRoute-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanRoute-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanRoute-request
    (cl:cons ':header (header msg))
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':plan_from_vehicle (plan_from_vehicle msg))
))
;//! \htmlinclude PlanRoute-response.msg.html

(cl:defclass <PlanRoute-response> (roslisp-msg-protocol:ros-message)
  ((route
    :reader route
    :initarg :route
    :type marti_nav_msgs-msg:Route
    :initform (cl:make-instance 'marti_nav_msgs-msg:Route))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass PlanRoute-response (<PlanRoute-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanRoute-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanRoute-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<PlanRoute-response> is deprecated: use marti_nav_msgs-srv:PlanRoute-response instead.")))

(cl:ensure-generic-function 'route-val :lambda-list '(m))
(cl:defmethod route-val ((m <PlanRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:route-val is deprecated.  Use marti_nav_msgs-srv:route instead.")
  (route m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlanRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:success-val is deprecated.  Use marti_nav_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <PlanRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:message-val is deprecated.  Use marti_nav_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanRoute-response>) ostream)
  "Serializes a message object of type '<PlanRoute-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'route) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanRoute-response>) istream)
  "Deserializes a message object of type '<PlanRoute-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'route) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanRoute-response>)))
  "Returns string type for a service object of type '<PlanRoute-response>"
  "marti_nav_msgs/PlanRouteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanRoute-response)))
  "Returns string type for a service object of type 'PlanRoute-response"
  "marti_nav_msgs/PlanRouteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanRoute-response>)))
  "Returns md5sum for a message object of type '<PlanRoute-response>"
  "fc2df8428924c01b72b355fa8fd38799")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanRoute-response)))
  "Returns md5sum for a message object of type 'PlanRoute-response"
  "fc2df8428924c01b72b355fa8fd38799")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanRoute-response>)))
  "Returns full string definition for message of type '<PlanRoute-response>"
  (cl:format cl:nil "~%Route  route~%~%bool success~%string message~%~%~%================================================================================~%MSG: marti_nav_msgs/Route~%Header                         header~%RoutePoint[]                   route_points~%marti_common_msgs/KeyValue[]   properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/RoutePoint~%geometry_msgs/Pose           pose~%string                       id         # unique identifier for this point~%marti_common_msgs/KeyValue[] properties~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanRoute-response)))
  "Returns full string definition for message of type 'PlanRoute-response"
  (cl:format cl:nil "~%Route  route~%~%bool success~%string message~%~%~%================================================================================~%MSG: marti_nav_msgs/Route~%Header                         header~%RoutePoint[]                   route_points~%marti_common_msgs/KeyValue[]   properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/RoutePoint~%geometry_msgs/Pose           pose~%string                       id         # unique identifier for this point~%marti_common_msgs/KeyValue[] properties~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanRoute-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'route))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanRoute-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanRoute-response
    (cl:cons ':route (route msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanRoute)))
  'PlanRoute-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanRoute)))
  'PlanRoute-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanRoute)))
  "Returns string type for a service object of type '<PlanRoute>"
  "marti_nav_msgs/PlanRoute")