; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-srv)


;//! \htmlinclude SetRoute-request.msg.html

(cl:defclass <SetRoute-request> (roslisp-msg-protocol:ros-message)
  ((guid
    :reader guid
    :initarg :guid
    :type cl:string
    :initform "")
   (repeat
    :reader repeat
    :initarg :repeat
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetRoute-request (<SetRoute-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRoute-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRoute-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<SetRoute-request> is deprecated: use marti_nav_msgs-srv:SetRoute-request instead.")))

(cl:ensure-generic-function 'guid-val :lambda-list '(m))
(cl:defmethod guid-val ((m <SetRoute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:guid-val is deprecated.  Use marti_nav_msgs-srv:guid instead.")
  (guid m))

(cl:ensure-generic-function 'repeat-val :lambda-list '(m))
(cl:defmethod repeat-val ((m <SetRoute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:repeat-val is deprecated.  Use marti_nav_msgs-srv:repeat instead.")
  (repeat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRoute-request>) ostream)
  "Serializes a message object of type '<SetRoute-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'guid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'guid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'repeat) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRoute-request>) istream)
  "Deserializes a message object of type '<SetRoute-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'guid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'guid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'repeat) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRoute-request>)))
  "Returns string type for a service object of type '<SetRoute-request>"
  "marti_nav_msgs/SetRouteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRoute-request)))
  "Returns string type for a service object of type 'SetRoute-request"
  "marti_nav_msgs/SetRouteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRoute-request>)))
  "Returns md5sum for a message object of type '<SetRoute-request>"
  "0bc46443a53e01f8652f1e0c92515b05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRoute-request)))
  "Returns md5sum for a message object of type 'SetRoute-request"
  "0bc46443a53e01f8652f1e0c92515b05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRoute-request>)))
  "Returns full string definition for message of type '<SetRoute-request>"
  (cl:format cl:nil "~%~%string guid~%bool repeat~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRoute-request)))
  "Returns full string definition for message of type 'SetRoute-request"
  (cl:format cl:nil "~%~%string guid~%bool repeat~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRoute-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'guid))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRoute-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRoute-request
    (cl:cons ':guid (guid msg))
    (cl:cons ':repeat (repeat msg))
))
;//! \htmlinclude SetRoute-response.msg.html

(cl:defclass <SetRoute-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetRoute-response (<SetRoute-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetRoute-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetRoute-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<SetRoute-response> is deprecated: use marti_nav_msgs-srv:SetRoute-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:success-val is deprecated.  Use marti_nav_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:message-val is deprecated.  Use marti_nav_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetRoute-response>) ostream)
  "Serializes a message object of type '<SetRoute-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetRoute-response>) istream)
  "Deserializes a message object of type '<SetRoute-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetRoute-response>)))
  "Returns string type for a service object of type '<SetRoute-response>"
  "marti_nav_msgs/SetRouteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRoute-response)))
  "Returns string type for a service object of type 'SetRoute-response"
  "marti_nav_msgs/SetRouteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetRoute-response>)))
  "Returns md5sum for a message object of type '<SetRoute-response>"
  "0bc46443a53e01f8652f1e0c92515b05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetRoute-response)))
  "Returns md5sum for a message object of type 'SetRoute-response"
  "0bc46443a53e01f8652f1e0c92515b05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetRoute-response>)))
  "Returns full string definition for message of type '<SetRoute-response>"
  (cl:format cl:nil "~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetRoute-response)))
  "Returns full string definition for message of type 'SetRoute-response"
  (cl:format cl:nil "~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetRoute-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetRoute-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetRoute-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetRoute)))
  'SetRoute-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetRoute)))
  'SetRoute-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetRoute)))
  "Returns string type for a service object of type '<SetRoute>"
  "marti_nav_msgs/SetRoute")