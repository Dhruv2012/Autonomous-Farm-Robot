; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-srv)


;//! \htmlinclude GetRouteList-request.msg.html

(cl:defclass <GetRouteList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetRouteList-request (<GetRouteList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRouteList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRouteList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<GetRouteList-request> is deprecated: use marti_nav_msgs-srv:GetRouteList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRouteList-request>) ostream)
  "Serializes a message object of type '<GetRouteList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRouteList-request>) istream)
  "Deserializes a message object of type '<GetRouteList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRouteList-request>)))
  "Returns string type for a service object of type '<GetRouteList-request>"
  "marti_nav_msgs/GetRouteListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRouteList-request)))
  "Returns string type for a service object of type 'GetRouteList-request"
  "marti_nav_msgs/GetRouteListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRouteList-request>)))
  "Returns md5sum for a message object of type '<GetRouteList-request>"
  "24b443520442ddc540d0fd59f35403a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRouteList-request)))
  "Returns md5sum for a message object of type 'GetRouteList-request"
  "24b443520442ddc540d0fd59f35403a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRouteList-request>)))
  "Returns full string definition for message of type '<GetRouteList-request>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRouteList-request)))
  "Returns full string definition for message of type 'GetRouteList-request"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRouteList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRouteList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRouteList-request
))
;//! \htmlinclude GetRouteList-response.msg.html

(cl:defclass <GetRouteList-response> (roslisp-msg-protocol:ros-message)
  ((routes
    :reader routes
    :initarg :routes
    :type (cl:vector marti_nav_msgs-msg:Route)
   :initform (cl:make-array 0 :element-type 'marti_nav_msgs-msg:Route :initial-element (cl:make-instance 'marti_nav_msgs-msg:Route)))
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

(cl:defclass GetRouteList-response (<GetRouteList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRouteList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRouteList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<GetRouteList-response> is deprecated: use marti_nav_msgs-srv:GetRouteList-response instead.")))

(cl:ensure-generic-function 'routes-val :lambda-list '(m))
(cl:defmethod routes-val ((m <GetRouteList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:routes-val is deprecated.  Use marti_nav_msgs-srv:routes instead.")
  (routes m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetRouteList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:success-val is deprecated.  Use marti_nav_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <GetRouteList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:message-val is deprecated.  Use marti_nav_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRouteList-response>) ostream)
  "Serializes a message object of type '<GetRouteList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'routes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'routes))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRouteList-response>) istream)
  "Deserializes a message object of type '<GetRouteList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'routes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'routes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marti_nav_msgs-msg:Route))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRouteList-response>)))
  "Returns string type for a service object of type '<GetRouteList-response>"
  "marti_nav_msgs/GetRouteListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRouteList-response)))
  "Returns string type for a service object of type 'GetRouteList-response"
  "marti_nav_msgs/GetRouteListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRouteList-response>)))
  "Returns md5sum for a message object of type '<GetRouteList-response>"
  "24b443520442ddc540d0fd59f35403a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRouteList-response)))
  "Returns md5sum for a message object of type 'GetRouteList-response"
  "24b443520442ddc540d0fd59f35403a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRouteList-response>)))
  "Returns full string definition for message of type '<GetRouteList-response>"
  (cl:format cl:nil "marti_nav_msgs/Route[] routes~%~%bool success~%string message~%~%~%================================================================================~%MSG: marti_nav_msgs/Route~%Header                         header~%RoutePoint[]                   route_points~%marti_common_msgs/KeyValue[]   properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/RoutePoint~%geometry_msgs/Pose           pose~%string                       id         # unique identifier for this point~%marti_common_msgs/KeyValue[] properties~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRouteList-response)))
  "Returns full string definition for message of type 'GetRouteList-response"
  (cl:format cl:nil "marti_nav_msgs/Route[] routes~%~%bool success~%string message~%~%~%================================================================================~%MSG: marti_nav_msgs/Route~%Header                         header~%RoutePoint[]                   route_points~%marti_common_msgs/KeyValue[]   properties~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/RoutePoint~%geometry_msgs/Pose           pose~%string                       id         # unique identifier for this point~%marti_common_msgs/KeyValue[] properties~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRouteList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'routes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRouteList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRouteList-response
    (cl:cons ':routes (routes msg))
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRouteList)))
  'GetRouteList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRouteList)))
  'GetRouteList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRouteList)))
  "Returns string type for a service object of type '<GetRouteList>"
  "marti_nav_msgs/GetRouteList")