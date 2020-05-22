; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-srv)


;//! \htmlinclude SaveRecordedRoute-request.msg.html

(cl:defclass <SaveRecordedRoute-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (thumbnail
    :reader thumbnail
    :initarg :thumbnail
    :type cl:string
    :initform ""))
)

(cl:defclass SaveRecordedRoute-request (<SaveRecordedRoute-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveRecordedRoute-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveRecordedRoute-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<SaveRecordedRoute-request> is deprecated: use marti_nav_msgs-srv:SaveRecordedRoute-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SaveRecordedRoute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:name-val is deprecated.  Use marti_nav_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'thumbnail-val :lambda-list '(m))
(cl:defmethod thumbnail-val ((m <SaveRecordedRoute-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:thumbnail-val is deprecated.  Use marti_nav_msgs-srv:thumbnail instead.")
  (thumbnail m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveRecordedRoute-request>) ostream)
  "Serializes a message object of type '<SaveRecordedRoute-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'thumbnail))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'thumbnail))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveRecordedRoute-request>) istream)
  "Deserializes a message object of type '<SaveRecordedRoute-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'thumbnail) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'thumbnail) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveRecordedRoute-request>)))
  "Returns string type for a service object of type '<SaveRecordedRoute-request>"
  "marti_nav_msgs/SaveRecordedRouteRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRecordedRoute-request)))
  "Returns string type for a service object of type 'SaveRecordedRoute-request"
  "marti_nav_msgs/SaveRecordedRouteRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveRecordedRoute-request>)))
  "Returns md5sum for a message object of type '<SaveRecordedRoute-request>"
  "1d60247b7d1b53a7f54ab7ec855129c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveRecordedRoute-request)))
  "Returns md5sum for a message object of type 'SaveRecordedRoute-request"
  "1d60247b7d1b53a7f54ab7ec855129c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveRecordedRoute-request>)))
  "Returns full string definition for message of type '<SaveRecordedRoute-request>"
  (cl:format cl:nil "string name~%string thumbnail~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveRecordedRoute-request)))
  "Returns full string definition for message of type 'SaveRecordedRoute-request"
  (cl:format cl:nil "string name~%string thumbnail~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveRecordedRoute-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'thumbnail))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveRecordedRoute-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveRecordedRoute-request
    (cl:cons ':name (name msg))
    (cl:cons ':thumbnail (thumbnail msg))
))
;//! \htmlinclude SaveRecordedRoute-response.msg.html

(cl:defclass <SaveRecordedRoute-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SaveRecordedRoute-response (<SaveRecordedRoute-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveRecordedRoute-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveRecordedRoute-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-srv:<SaveRecordedRoute-response> is deprecated: use marti_nav_msgs-srv:SaveRecordedRoute-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SaveRecordedRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:success-val is deprecated.  Use marti_nav_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SaveRecordedRoute-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-srv:message-val is deprecated.  Use marti_nav_msgs-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveRecordedRoute-response>) ostream)
  "Serializes a message object of type '<SaveRecordedRoute-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveRecordedRoute-response>) istream)
  "Deserializes a message object of type '<SaveRecordedRoute-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveRecordedRoute-response>)))
  "Returns string type for a service object of type '<SaveRecordedRoute-response>"
  "marti_nav_msgs/SaveRecordedRouteResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRecordedRoute-response)))
  "Returns string type for a service object of type 'SaveRecordedRoute-response"
  "marti_nav_msgs/SaveRecordedRouteResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveRecordedRoute-response>)))
  "Returns md5sum for a message object of type '<SaveRecordedRoute-response>"
  "1d60247b7d1b53a7f54ab7ec855129c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveRecordedRoute-response)))
  "Returns md5sum for a message object of type 'SaveRecordedRoute-response"
  "1d60247b7d1b53a7f54ab7ec855129c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveRecordedRoute-response>)))
  "Returns full string definition for message of type '<SaveRecordedRoute-response>"
  (cl:format cl:nil "~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveRecordedRoute-response)))
  "Returns full string definition for message of type 'SaveRecordedRoute-response"
  (cl:format cl:nil "~%bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveRecordedRoute-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveRecordedRoute-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveRecordedRoute-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveRecordedRoute)))
  'SaveRecordedRoute-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveRecordedRoute)))
  'SaveRecordedRoute-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRecordedRoute)))
  "Returns string type for a service object of type '<SaveRecordedRoute>"
  "marti_nav_msgs/SaveRecordedRoute")