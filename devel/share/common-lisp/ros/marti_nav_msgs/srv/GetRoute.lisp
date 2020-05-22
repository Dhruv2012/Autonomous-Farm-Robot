; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-srv)


;//! \htmlinclude GetRoute-request.msg.html

(cl:defclass <GetRoute-request> (roslisp-msg-protocol:ros-message)
  ((guid
    :reader guid
    :initarg :guid
    :type cl:string
    :initform ""))
)

(cl:defclass GetRoute-request (<GetRoute-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRoute-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRoute-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<GetRoute-request> is deprecated: use marti_nav_msgs-srv:GetRoute-request instead.")))

(cl:ensure-generic-function 'guid-val :lambda-list '(m))
(cl:defmethod guid-val ((m <GetRoute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:guid-val is deprecated.  Use marti_nav_msgs-srv:guid instead.")
  (guid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRoute-request>) ostream)
  "Serializes a message object of type '<GetRoute-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'guid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'guid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRoute-request>) istream)
  "Deserializes a message object of type '<GetRoute-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'guid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'guid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRoute-request>)))
  "Returns string type for a service object of type '<GetRoute-request>"
  "marti_nav_msgs/GetRouteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoute-request)))
  "Returns string type for a service object of type 'GetRoute-request"
  "marti_nav_msgs/GetRouteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRoute-request>)))
  "Returns md5sum for a message object of type '<GetRoute-request>"
  "9f5c6eaa0139ef1e2690cdfe037b8e5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRoute-request)))
  "Returns md5sum for a message object of type 'GetRoute-request"
  "9f5c6eaa0139ef1e2690cdfe037b8e5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRoute-request>)))
  "Returns full string definition for message of type '<GetRoute-request>"
  (cl:format cl:nil "~%~%string guid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRoute-request)))
  "Returns full string definition for message of type 'GetRoute-request"
  (cl:format cl:nil "~%~%string guid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRoute-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'guid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRoute-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRoute-request
    (cl:cons ':guid (guid msg))
))
;//! \htmlinclude GetRoute-response.msg.html

(cl:defclass <GetRoute-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetRoute-response (<GetRoute-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRoute-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRoute-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<GetRoute-response> is deprecated: use marti_nav_msgs-srv:GetRoute-response instead.")))

(cl:ensure-generic-function 'route-val :lambda-list '(m))
(cl:defmethod route-val ((m <GetRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:route-val is deprecated.  Use marti_nav_msgs-srv:route instead.")
  (route m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:success-val is deprecated.  Use marti_nav_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:message-val is deprecated.  Use marti_nav_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRoute-response>) ostream)
  "Serializes a message object of type '<GetRoute-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'route) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRoute-response>) istream)
  "Deserializes a message object of type '<GetRoute-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRoute-response>)))
  "Returns string type for a service object of type '<GetRoute-response>"
  "marti_nav_msgs/GetRouteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoute-response)))
  "Returns string type for a service object of type 'GetRoute-response"
  "marti_nav_msgs/GetRouteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRoute-response>)))
  "Returns md5sum for a message object of type '<GetRoute-response>"
  "9f5c6eaa0139ef1e2690cdfe037b8e5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRoute-response)))
  "Returns md5sum for a message object of type 'GetRoute-response"
  "9f5c6eaa0139ef1e2690cdfe037b8e5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRoute-response>)))
  "Returns full string definition for message of type '<GetRoute-response>"
  (cl:format cl:nil "~%marti_nav_msgs/Route route~%~%bool success~%string message~%~%~%================================================================================~%MSG: marti_nav_msgs/Route~%Header                         header~%RoutePoint[]                   route_points~%marti_common_msgs/KeyValue[]   properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/RoutePoint~%geometry_msgs/Pose           pose~%string                       id         # unique identifier for this point~%marti_common_msgs/KeyValue[] properties~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRoute-response)))
  "Returns full string definition for message of type 'GetRoute-response"
  (cl:format cl:nil "~%marti_nav_msgs/Route route~%~%bool success~%string message~%~%~%================================================================================~%MSG: marti_nav_msgs/Route~%Header                         header~%RoutePoint[]                   route_points~%marti_common_msgs/KeyValue[]   properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/RoutePoint~%geometry_msgs/Pose           pose~%string                       id         # unique identifier for this point~%marti_common_msgs/KeyValue[] properties~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRoute-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'route))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRoute-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRoute-response
    (cl:cons ':route (route msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRoute)))
  'GetRoute-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRoute)))
  'GetRoute-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRoute)))
  "Returns string type for a service object of type '<GetRoute>"
  "marti_nav_msgs/GetRoute")