; Auto-generated. Do not edit!


(cl:in-package mapviz-srv)


;//! \htmlinclude AddMapvizDisplay-request.msg.html

(cl:defclass <AddMapvizDisplay-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (draw_order
    :reader draw_order
    :initarg :draw_order
    :type cl:integer
    :initform 0)
   (visible
    :reader visible
    :initarg :visible
    :type cl:boolean
    :initform cl:nil)
   (properties
    :reader properties
    :initarg :properties
    :type (cl:vector marti_common_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'marti_common_msgs-msg:KeyValue :initial-element (cl:make-instance 'marti_common_msgs-msg:KeyValue))))
)

(cl:defclass AddMapvizDisplay-request (<AddMapvizDisplay-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddMapvizDisplay-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddMapvizDisplay-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mapviz-srv:<AddMapvizDisplay-request> is deprecated: use mapviz-srv:AddMapvizDisplay-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AddMapvizDisplay-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapviz-srv:name-val is deprecated.  Use mapviz-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AddMapvizDisplay-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapviz-srv:type-val is deprecated.  Use mapviz-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'draw_order-val :lambda-list '(m))
(cl:defmethod draw_order-val ((m <AddMapvizDisplay-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapviz-srv:draw_order-val is deprecated.  Use mapviz-srv:draw_order instead.")
  (draw_order m))

(cl:ensure-generic-function 'visible-val :lambda-list '(m))
(cl:defmethod visible-val ((m <AddMapvizDisplay-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapviz-srv:visible-val is deprecated.  Use mapviz-srv:visible instead.")
  (visible m))

(cl:ensure-generic-function 'properties-val :lambda-list '(m))
(cl:defmethod properties-val ((m <AddMapvizDisplay-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapviz-srv:properties-val is deprecated.  Use mapviz-srv:properties instead.")
  (properties m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddMapvizDisplay-request>) ostream)
  "Serializes a message object of type '<AddMapvizDisplay-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let* ((signed (cl:slot-value msg 'draw_order)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'visible) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'properties))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'properties))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddMapvizDisplay-request>) istream)
  "Deserializes a message object of type '<AddMapvizDisplay-request>"
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
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'draw_order) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'visible) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'properties) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'properties)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marti_common_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddMapvizDisplay-request>)))
  "Returns string type for a service object of type '<AddMapvizDisplay-request>"
  "mapviz/AddMapvizDisplayRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMapvizDisplay-request)))
  "Returns string type for a service object of type 'AddMapvizDisplay-request"
  "mapviz/AddMapvizDisplayRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddMapvizDisplay-request>)))
  "Returns md5sum for a message object of type '<AddMapvizDisplay-request>"
  "7bd51d7a9d8469fae51039cf79b96d10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddMapvizDisplay-request)))
  "Returns md5sum for a message object of type 'AddMapvizDisplay-request"
  "7bd51d7a9d8469fae51039cf79b96d10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddMapvizDisplay-request>)))
  "Returns full string definition for message of type '<AddMapvizDisplay-request>"
  (cl:format cl:nil "~%~%string                        name~%string                        type~%~%int32                         draw_order~%~%~%~%~%~%~%~%bool                          visible~%~%marti_common_msgs/KeyValue[]  properties~%~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddMapvizDisplay-request)))
  "Returns full string definition for message of type 'AddMapvizDisplay-request"
  (cl:format cl:nil "~%~%string                        name~%string                        type~%~%int32                         draw_order~%~%~%~%~%~%~%~%bool                          visible~%~%marti_common_msgs/KeyValue[]  properties~%~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddMapvizDisplay-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'type))
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'properties) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddMapvizDisplay-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddMapvizDisplay-request
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':draw_order (draw_order msg))
    (cl:cons ':visible (visible msg))
    (cl:cons ':properties (properties msg))
))
;//! \htmlinclude AddMapvizDisplay-response.msg.html

(cl:defclass <AddMapvizDisplay-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass AddMapvizDisplay-response (<AddMapvizDisplay-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddMapvizDisplay-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddMapvizDisplay-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mapviz-srv:<AddMapvizDisplay-response> is deprecated: use mapviz-srv:AddMapvizDisplay-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <AddMapvizDisplay-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapviz-srv:success-val is deprecated.  Use mapviz-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <AddMapvizDisplay-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mapviz-srv:message-val is deprecated.  Use mapviz-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddMapvizDisplay-response>) ostream)
  "Serializes a message object of type '<AddMapvizDisplay-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddMapvizDisplay-response>) istream)
  "Deserializes a message object of type '<AddMapvizDisplay-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddMapvizDisplay-response>)))
  "Returns string type for a service object of type '<AddMapvizDisplay-response>"
  "mapviz/AddMapvizDisplayResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMapvizDisplay-response)))
  "Returns string type for a service object of type 'AddMapvizDisplay-response"
  "mapviz/AddMapvizDisplayResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddMapvizDisplay-response>)))
  "Returns md5sum for a message object of type '<AddMapvizDisplay-response>"
  "7bd51d7a9d8469fae51039cf79b96d10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddMapvizDisplay-response)))
  "Returns md5sum for a message object of type 'AddMapvizDisplay-response"
  "7bd51d7a9d8469fae51039cf79b96d10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddMapvizDisplay-response>)))
  "Returns full string definition for message of type '<AddMapvizDisplay-response>"
  (cl:format cl:nil "~%bool   success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddMapvizDisplay-response)))
  "Returns full string definition for message of type 'AddMapvizDisplay-response"
  (cl:format cl:nil "~%bool   success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddMapvizDisplay-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddMapvizDisplay-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddMapvizDisplay-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddMapvizDisplay)))
  'AddMapvizDisplay-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddMapvizDisplay)))
  'AddMapvizDisplay-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddMapvizDisplay)))
  "Returns string type for a service object of type '<AddMapvizDisplay>"
  "mapviz/AddMapvizDisplay")