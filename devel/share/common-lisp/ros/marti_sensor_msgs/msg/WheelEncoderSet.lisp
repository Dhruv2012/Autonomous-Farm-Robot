; Auto-generated. Do not edit!


(cl:in-package marti_sensor_msgs-msg)


;//! \htmlinclude WheelEncoderSet.msg.html

(cl:defclass <WheelEncoderSet> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (encoders
    :reader encoders
    :initarg :encoders
    :type (cl:vector marti_sensor_msgs-msg:WheelEncoder)
   :initform (cl:make-array 0 :element-type 'marti_sensor_msgs-msg:WheelEncoder :initial-element (cl:make-instance 'marti_sensor_msgs-msg:WheelEncoder))))
)

(cl:defclass WheelEncoderSet (<WheelEncoderSet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelEncoderSet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelEncoderSet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_sensor_msgs-msg:<WheelEncoderSet> is deprecated: use marti_sensor_msgs-msg:WheelEncoderSet instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WheelEncoderSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:header-val is deprecated.  Use marti_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'encoders-val :lambda-list '(m))
(cl:defmethod encoders-val ((m <WheelEncoderSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:encoders-val is deprecated.  Use marti_sensor_msgs-msg:encoders instead.")
  (encoders m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelEncoderSet>) ostream)
  "Serializes a message object of type '<WheelEncoderSet>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'encoders))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'encoders))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelEncoderSet>) istream)
  "Deserializes a message object of type '<WheelEncoderSet>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'encoders) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'encoders)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marti_sensor_msgs-msg:WheelEncoder))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelEncoderSet>)))
  "Returns string type for a message object of type '<WheelEncoderSet>"
  "marti_sensor_msgs/WheelEncoderSet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelEncoderSet)))
  "Returns string type for a message object of type 'WheelEncoderSet"
  "marti_sensor_msgs/WheelEncoderSet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelEncoderSet>)))
  "Returns md5sum for a message object of type '<WheelEncoderSet>"
  "a1169b74ddf14d2e1ad1aa65311182d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelEncoderSet)))
  "Returns md5sum for a message object of type 'WheelEncoderSet"
  "a1169b74ddf14d2e1ad1aa65311182d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelEncoderSet>)))
  "Returns full string definition for message of type '<WheelEncoderSet>"
  (cl:format cl:nil "Header header~%~%WheelEncoder[] encoders~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_sensor_msgs/WheelEncoder~%# Frequency from wheel encoder~%#  If directional (below) is True, positive frequency means forward, and~%#   negative frequency means backward.~%#  If directional is False, frequency is non-negative and has no directional~%#   information~%float64 frequency~%~%# True if frequency sign is significant; false else~%bool directional~%~%# ID of the wheel with which this data is associated~%uint8 id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelEncoderSet)))
  "Returns full string definition for message of type 'WheelEncoderSet"
  (cl:format cl:nil "Header header~%~%WheelEncoder[] encoders~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_sensor_msgs/WheelEncoder~%# Frequency from wheel encoder~%#  If directional (below) is True, positive frequency means forward, and~%#   negative frequency means backward.~%#  If directional is False, frequency is non-negative and has no directional~%#   information~%float64 frequency~%~%# True if frequency sign is significant; false else~%bool directional~%~%# ID of the wheel with which this data is associated~%uint8 id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelEncoderSet>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'encoders) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelEncoderSet>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelEncoderSet
    (cl:cons ':header (header msg))
    (cl:cons ':encoders (encoders msg))
))
