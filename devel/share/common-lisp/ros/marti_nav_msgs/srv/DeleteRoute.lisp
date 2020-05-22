; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-srv)


;//! \htmlinclude DeleteRoute-request.msg.html

(cl:defclass <DeleteRoute-request> (roslisp-msg-protocol:ros-message)
  ((guid
    :reader guid
    :initarg :guid
    :type cl:string
    :initform ""))
)

(cl:defclass DeleteRoute-request (<DeleteRoute-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteRoute-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteRoute-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<DeleteRoute-request> is deprecated: use marti_nav_msgs-srv:DeleteRoute-request instead.")))

(cl:ensure-generic-function 'guid-val :lambda-list '(m))
(cl:defmethod guid-val ((m <DeleteRoute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:guid-val is deprecated.  Use marti_nav_msgs-srv:guid instead.")
  (guid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteRoute-request>) ostream)
  "Serializes a message object of type '<DeleteRoute-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'guid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'guid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteRoute-request>) istream)
  "Deserializes a message object of type '<DeleteRoute-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteRoute-request>)))
  "Returns string type for a service object of type '<DeleteRoute-request>"
  "marti_nav_msgs/DeleteRouteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteRoute-request)))
  "Returns string type for a service object of type 'DeleteRoute-request"
  "marti_nav_msgs/DeleteRouteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteRoute-request>)))
  "Returns md5sum for a message object of type '<DeleteRoute-request>"
  "9f9e2ffb5f3c35330346e06164f26526")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteRoute-request)))
  "Returns md5sum for a message object of type 'DeleteRoute-request"
  "9f9e2ffb5f3c35330346e06164f26526")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteRoute-request>)))
  "Returns full string definition for message of type '<DeleteRoute-request>"
  (cl:format cl:nil "string guid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteRoute-request)))
  "Returns full string definition for message of type 'DeleteRoute-request"
  (cl:format cl:nil "string guid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteRoute-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'guid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteRoute-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteRoute-request
    (cl:cons ':guid (guid msg))
))
;//! \htmlinclude DeleteRoute-response.msg.html

(cl:defclass <DeleteRoute-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass DeleteRoute-response (<DeleteRoute-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeleteRoute-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeleteRoute-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<DeleteRoute-response> is deprecated: use marti_nav_msgs-srv:DeleteRoute-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DeleteRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:success-val is deprecated.  Use marti_nav_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <DeleteRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:message-val is deprecated.  Use marti_nav_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeleteRoute-response>) ostream)
  "Serializes a message object of type '<DeleteRoute-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeleteRoute-response>) istream)
  "Deserializes a message object of type '<DeleteRoute-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeleteRoute-response>)))
  "Returns string type for a service object of type '<DeleteRoute-response>"
  "marti_nav_msgs/DeleteRouteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteRoute-response)))
  "Returns string type for a service object of type 'DeleteRoute-response"
  "marti_nav_msgs/DeleteRouteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeleteRoute-response>)))
  "Returns md5sum for a message object of type '<DeleteRoute-response>"
  "9f9e2ffb5f3c35330346e06164f26526")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeleteRoute-response)))
  "Returns md5sum for a message object of type 'DeleteRoute-response"
  "9f9e2ffb5f3c35330346e06164f26526")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeleteRoute-response>)))
  "Returns full string definition for message of type '<DeleteRoute-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeleteRoute-response)))
  "Returns full string definition for message of type 'DeleteRoute-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeleteRoute-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeleteRoute-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DeleteRoute-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DeleteRoute)))
  'DeleteRoute-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DeleteRoute)))
  'DeleteRoute-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeleteRoute)))
  "Returns string type for a service object of type '<DeleteRoute>"
  "marti_nav_msgs/DeleteRoute")