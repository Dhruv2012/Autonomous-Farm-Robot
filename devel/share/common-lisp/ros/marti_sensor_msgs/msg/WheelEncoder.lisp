; Auto-generated. Do not edit!


(cl:in-package marti_sensor_msgs-msg)


;//! \htmlinclude WheelEncoder.msg.html

(cl:defclass <WheelEncoder> (roslisp-msg-protocol:ros-message)
  ((frequency
    :reader frequency
    :initarg :frequency
    :type cl:float
    :initform 0.0)
   (directional
    :reader directional
    :initarg :directional
    :type cl:boolean
    :initform cl:nil)
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WheelEncoder (<WheelEncoder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelEncoder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelEncoder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_sensor_msgs-msg:<WheelEncoder> is deprecated: use marti_sensor_msgs-msg:WheelEncoder instead.")))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <WheelEncoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:frequency-val is deprecated.  Use marti_sensor_msgs-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'directional-val :lambda-list '(m))
(cl:defmethod directional-val ((m <WheelEncoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:directional-val is deprecated.  Use marti_sensor_msgs-msg:directional instead.")
  (directional m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <WheelEncoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:id-val is deprecated.  Use marti_sensor_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelEncoder>) ostream)
  "Serializes a message object of type '<WheelEncoder>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directional) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelEncoder>) istream)
  "Deserializes a message object of type '<WheelEncoder>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frequency) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'directional) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelEncoder>)))
  "Returns string type for a message object of type '<WheelEncoder>"
  "marti_sensor_msgs/WheelEncoder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelEncoder)))
  "Returns string type for a message object of type 'WheelEncoder"
  "marti_sensor_msgs/WheelEncoder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelEncoder>)))
  "Returns md5sum for a message object of type '<WheelEncoder>"
  "18725be6b3a6d8aef45fc5b0d63b9a58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelEncoder)))
  "Returns md5sum for a message object of type 'WheelEncoder"
  "18725be6b3a6d8aef45fc5b0d63b9a58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelEncoder>)))
  "Returns full string definition for message of type '<WheelEncoder>"
  (cl:format cl:nil "# Frequency from wheel encoder~%#  If directional (below) is True, positive frequency means forward, and~%#   negative frequency means backward.~%#  If directional is False, frequency is non-negative and has no directional~%#   information~%float64 frequency~%~%# True if frequency sign is significant; false else~%bool directional~%~%# ID of the wheel with which this data is associated~%uint8 id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelEncoder)))
  "Returns full string definition for message of type 'WheelEncoder"
  (cl:format cl:nil "# Frequency from wheel encoder~%#  If directional (below) is True, positive frequency means forward, and~%#   negative frequency means backward.~%#  If directional is False, frequency is non-negative and has no directional~%#   information~%float64 frequency~%~%# True if frequency sign is significant; false else~%bool directional~%~%# ID of the wheel with which this data is associated~%uint8 id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelEncoder>))
  (cl:+ 0
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelEncoder>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelEncoder
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':directional (directional msg))
    (cl:cons ':id (id msg))
))
