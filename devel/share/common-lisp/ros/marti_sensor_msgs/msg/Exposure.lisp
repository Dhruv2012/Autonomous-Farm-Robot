; Auto-generated. Do not edit!


(cl:in-package marti_sensor_msgs-msg)


;//! \htmlinclude Exposure.msg.html

(cl:defclass <Exposure> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass Exposure (<Exposure>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Exposure>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Exposure)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_sensor_msgs-msg:<Exposure> is deprecated: use marti_sensor_msgs-msg:Exposure instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Exposure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:header-val is deprecated.  Use marti_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Exposure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:value-val is deprecated.  Use marti_sensor_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Exposure>) ostream)
  "Serializes a message object of type '<Exposure>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Exposure>) istream)
  "Deserializes a message object of type '<Exposure>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Exposure>)))
  "Returns string type for a message object of type '<Exposure>"
  "marti_sensor_msgs/Exposure")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Exposure)))
  "Returns string type for a message object of type 'Exposure"
  "marti_sensor_msgs/Exposure")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Exposure>)))
  "Returns md5sum for a message object of type '<Exposure>"
  "85b556f2af6a79c3e57c029d50b2ad45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Exposure)))
  "Returns md5sum for a message object of type 'Exposure"
  "85b556f2af6a79c3e57c029d50b2ad45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Exposure>)))
  "Returns full string definition for message of type '<Exposure>"
  (cl:format cl:nil "# This message contains an an exposure value along with a~%# message header.  This message is to keep the same format~%# that we have with Image and CameraInfo.~%~%Header header                    # Header timestamp is the time when all ~%                                 # images were acquired and synchronized.~%                                 # Header frame_id is the count of these~%                                 # messages sent since the start.~%                               ~%uint64 value                     # Exposure value~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Exposure)))
  "Returns full string definition for message of type 'Exposure"
  (cl:format cl:nil "# This message contains an an exposure value along with a~%# message header.  This message is to keep the same format~%# that we have with Image and CameraInfo.~%~%Header header                    # Header timestamp is the time when all ~%                                 # images were acquired and synchronized.~%                                 # Header frame_id is the count of these~%                                 # messages sent since the start.~%                               ~%uint64 value                     # Exposure value~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Exposure>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Exposure>))
  "Converts a ROS message object to a list"
  (cl:list 'Exposure
    (cl:cons ':header (header msg))
    (cl:cons ':value (value msg))
))
