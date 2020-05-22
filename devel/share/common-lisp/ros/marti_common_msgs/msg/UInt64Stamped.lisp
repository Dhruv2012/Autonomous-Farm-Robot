; Auto-generated. Do not edit!


(cl:in-package marti_common_msgs-msg)


;//! \htmlinclude UInt64Stamped.msg.html

(cl:defclass <UInt64Stamped> (roslisp-msg-protocol:ros-message)
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

(cl:defclass UInt64Stamped (<UInt64Stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UInt64Stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UInt64Stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_common_msgs-msg:<UInt64Stamped> is deprecated: use marti_common_msgs-msg:UInt64Stamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <UInt64Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:header-val is deprecated.  Use marti_common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <UInt64Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:value-val is deprecated.  Use marti_common_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UInt64Stamped>) ostream)
  "Serializes a message object of type '<UInt64Stamped>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UInt64Stamped>) istream)
  "Deserializes a message object of type '<UInt64Stamped>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UInt64Stamped>)))
  "Returns string type for a message object of type '<UInt64Stamped>"
  "marti_common_msgs/UInt64Stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UInt64Stamped)))
  "Returns string type for a message object of type 'UInt64Stamped"
  "marti_common_msgs/UInt64Stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UInt64Stamped>)))
  "Returns md5sum for a message object of type '<UInt64Stamped>"
  "85b556f2af6a79c3e57c029d50b2ad45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UInt64Stamped)))
  "Returns md5sum for a message object of type 'UInt64Stamped"
  "85b556f2af6a79c3e57c029d50b2ad45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UInt64Stamped>)))
  "Returns full string definition for message of type '<UInt64Stamped>"
  (cl:format cl:nil "Header header~%~%uint64 value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UInt64Stamped)))
  "Returns full string definition for message of type 'UInt64Stamped"
  (cl:format cl:nil "Header header~%~%uint64 value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UInt64Stamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UInt64Stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'UInt64Stamped
    (cl:cons ':header (header msg))
    (cl:cons ':value (value msg))
))
