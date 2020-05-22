; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-srv)


;//! \htmlinclude UpdateRouteMetadata-request.msg.html

(cl:defclass <UpdateRouteMetadata-request> (roslisp-msg-protocol:ros-message)
  ((route_guid
    :reader route_guid
    :initarg :route_guid
    :type cl:string
    :initform "")
   (metadata_points
    :reader metadata_points
    :initarg :metadata_points
    :type (cl:vector marti_nav_msgs-msg:RoutePoint)
   :initform (cl:make-array 0 :element-type 'marti_nav_msgs-msg:RoutePoint :initial-element (cl:make-instance 'marti_nav_msgs-msg:RoutePoint))))
)

(cl:defclass UpdateRouteMetadata-request (<UpdateRouteMetadata-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateRouteMetadata-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateRouteMetadata-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<UpdateRouteMetadata-request> is deprecated: use marti_nav_msgs-srv:UpdateRouteMetadata-request instead.")))

(cl:ensure-generic-function 'route_guid-val :lambda-list '(m))
(cl:defmethod route_guid-val ((m <UpdateRouteMetadata-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:route_guid-val is deprecated.  Use marti_nav_msgs-srv:route_guid instead.")
  (route_guid m))

(cl:ensure-generic-function 'metadata_points-val :lambda-list '(m))
(cl:defmethod metadata_points-val ((m <UpdateRouteMetadata-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:metadata_points-val is deprecated.  Use marti_nav_msgs-srv:metadata_points instead.")
  (metadata_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateRouteMetadata-request>) ostream)
  "Serializes a message object of type '<UpdateRouteMetadata-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'route_guid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'route_guid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'metadata_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'metadata_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateRouteMetadata-request>) istream)
  "Deserializes a message object of type '<UpdateRouteMetadata-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'route_guid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'route_guid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'metadata_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'metadata_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marti_nav_msgs-msg:RoutePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateRouteMetadata-request>)))
  "Returns string type for a service object of type '<UpdateRouteMetadata-request>"
  "marti_nav_msgs/UpdateRouteMetadataRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateRouteMetadata-request)))
  "Returns string type for a service object of type 'UpdateRouteMetadata-request"
  "marti_nav_msgs/UpdateRouteMetadataRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateRouteMetadata-request>)))
  "Returns md5sum for a message object of type '<UpdateRouteMetadata-request>"
  "680bbce4d545516006965d175dfcdb08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateRouteMetadata-request)))
  "Returns md5sum for a message object of type 'UpdateRouteMetadata-request"
  "680bbce4d545516006965d175dfcdb08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateRouteMetadata-request>)))
  "Returns full string definition for message of type '<UpdateRouteMetadata-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%string route_guid~%marti_nav_msgs/RoutePoint[] metadata_points~%~%================================================================================~%MSG: marti_nav_msgs/RoutePoint~%geometry_msgs/Pose           pose~%string                       id         # unique identifier for this point~%marti_common_msgs/KeyValue[] properties~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateRouteMetadata-request)))
  "Returns full string definition for message of type 'UpdateRouteMetadata-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%string route_guid~%marti_nav_msgs/RoutePoint[] metadata_points~%~%================================================================================~%MSG: marti_nav_msgs/RoutePoint~%geometry_msgs/Pose           pose~%string                       id         # unique identifier for this point~%marti_common_msgs/KeyValue[] properties~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateRouteMetadata-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'route_guid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'metadata_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateRouteMetadata-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateRouteMetadata-request
    (cl:cons ':route_guid (route_guid msg))
    (cl:cons ':metadata_points (metadata_points msg))
))
;//! \htmlinclude UpdateRouteMetadata-response.msg.html

(cl:defclass <UpdateRouteMetadata-response> (roslisp-msg-protocol:ros-message)
  ((success
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

(cl:defclass UpdateRouteMetadata-response (<UpdateRouteMetadata-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateRouteMetadata-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateRouteMetadata-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<UpdateRouteMetadata-response> is deprecated: use marti_nav_msgs-srv:UpdateRouteMetadata-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <UpdateRouteMetadata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:success-val is deprecated.  Use marti_nav_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <UpdateRouteMetadata-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:message-val is deprecated.  Use marti_nav_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateRouteMetadata-response>) ostream)
  "Serializes a message object of type '<UpdateRouteMetadata-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateRouteMetadata-response>) istream)
  "Deserializes a message object of type '<UpdateRouteMetadata-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateRouteMetadata-response>)))
  "Returns string type for a service object of type '<UpdateRouteMetadata-response>"
  "marti_nav_msgs/UpdateRouteMetadataResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateRouteMetadata-response)))
  "Returns string type for a service object of type 'UpdateRouteMetadata-response"
  "marti_nav_msgs/UpdateRouteMetadataResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateRouteMetadata-response>)))
  "Returns md5sum for a message object of type '<UpdateRouteMetadata-response>"
  "680bbce4d545516006965d175dfcdb08")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateRouteMetadata-response)))
  "Returns md5sum for a message object of type 'UpdateRouteMetadata-response"
  "680bbce4d545516006965d175dfcdb08")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateRouteMetadata-response>)))
  "Returns full string definition for message of type '<UpdateRouteMetadata-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateRouteMetadata-response)))
  "Returns full string definition for message of type 'UpdateRouteMetadata-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateRouteMetadata-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateRouteMetadata-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateRouteMetadata-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdateRouteMetadata)))
  'UpdateRouteMetadata-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdateRouteMetadata)))
  'UpdateRouteMetadata-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateRouteMetadata)))
  "Returns string type for a service object of type '<UpdateRouteMetadata>"
  "marti_nav_msgs/UpdateRouteMetadata")