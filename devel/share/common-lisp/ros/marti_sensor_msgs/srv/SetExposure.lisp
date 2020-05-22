; Auto-generated. Do not edit!


(cl:in-package marti_sensor_msgs-srv)


;//! \htmlinclude SetExposure-request.msg.html

(cl:defclass <SetExposure-request> (roslisp-msg-protocol:ros-message)
  ((auto_exposure
    :reader auto_exposure
    :initarg :auto_exposure
    :type cl:boolean
    :initform cl:nil)
   (time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0))
)

(cl:defclass SetExposure-request (<SetExposure-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetExposure-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetExposure-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_sensor_msgs-srv:<SetExposure-request> is deprecated: use marti_sensor_msgs-srv:SetExposure-request instead.")))

(cl:ensure-generic-function 'auto_exposure-val :lambda-list '(m))
(cl:defmethod auto_exposure-val ((m <SetExposure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-srv:auto_exposure-val is deprecated.  Use marti_sensor_msgs-srv:auto_exposure instead.")
  (auto_exposure m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <SetExposure-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-srv:time-val is deprecated.  Use marti_sensor_msgs-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetExposure-request>) ostream)
  "Serializes a message object of type '<SetExposure-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_exposure) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetExposure-request>) istream)
  "Deserializes a message object of type '<SetExposure-request>"
    (cl:setf (cl:slot-value msg 'auto_exposure) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetExposure-request>)))
  "Returns string type for a service object of type '<SetExposure-request>"
  "marti_sensor_msgs/SetExposureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetExposure-request)))
  "Returns string type for a service object of type 'SetExposure-request"
  "marti_sensor_msgs/SetExposureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetExposure-request>)))
  "Returns md5sum for a message object of type '<SetExposure-request>"
  "37809854cb4a4ba55aeed0163f3e52bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetExposure-request)))
  "Returns md5sum for a message object of type 'SetExposure-request"
  "37809854cb4a4ba55aeed0163f3e52bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetExposure-request>)))
  "Returns full string definition for message of type '<SetExposure-request>"
  (cl:format cl:nil "bool auto_exposure~%int64 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetExposure-request)))
  "Returns full string definition for message of type 'SetExposure-request"
  (cl:format cl:nil "bool auto_exposure~%int64 time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetExposure-request>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetExposure-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetExposure-request
    (cl:cons ':auto_exposure (auto_exposure msg))
    (cl:cons ':time (time msg))
))
;//! \htmlinclude SetExposure-response.msg.html

(cl:defclass <SetExposure-response> (roslisp-msg-protocol:ros-message)
  ((auto_exposure
    :reader auto_exposure
    :initarg :auto_exposure
    :type cl:boolean
    :initform cl:nil)
   (time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0))
)

(cl:defclass SetExposure-response (<SetExposure-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetExposure-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetExposure-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_sensor_msgs-srv:<SetExposure-response> is deprecated: use marti_sensor_msgs-srv:SetExposure-response instead.")))

(cl:ensure-generic-function 'auto_exposure-val :lambda-list '(m))
(cl:defmethod auto_exposure-val ((m <SetExposure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-srv:auto_exposure-val is deprecated.  Use marti_sensor_msgs-srv:auto_exposure instead.")
  (auto_exposure m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <SetExposure-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-srv:time-val is deprecated.  Use marti_sensor_msgs-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetExposure-response>) ostream)
  "Serializes a message object of type '<SetExposure-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'auto_exposure) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'time)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetExposure-response>) istream)
  "Deserializes a message object of type '<SetExposure-response>"
    (cl:setf (cl:slot-value msg 'auto_exposure) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetExposure-response>)))
  "Returns string type for a service object of type '<SetExposure-response>"
  "marti_sensor_msgs/SetExposureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetExposure-response)))
  "Returns string type for a service object of type 'SetExposure-response"
  "marti_sensor_msgs/SetExposureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetExposure-response>)))
  "Returns md5sum for a message object of type '<SetExposure-response>"
  "37809854cb4a4ba55aeed0163f3e52bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetExposure-response)))
  "Returns md5sum for a message object of type 'SetExposure-response"
  "37809854cb4a4ba55aeed0163f3e52bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetExposure-response>)))
  "Returns full string definition for message of type '<SetExposure-response>"
  (cl:format cl:nil "bool auto_exposure~%int64 time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetExposure-response)))
  "Returns full string definition for message of type 'SetExposure-response"
  (cl:format cl:nil "bool auto_exposure~%int64 time~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetExposure-response>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetExposure-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetExposure-response
    (cl:cons ':auto_exposure (auto_exposure msg))
    (cl:cons ':time (time msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetExposure)))
  'SetExposure-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetExposure)))
  'SetExposure-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetExposure)))
  "Returns string type for a service object of type '<SetExposure>"
  "marti_sensor_msgs/SetExposure")