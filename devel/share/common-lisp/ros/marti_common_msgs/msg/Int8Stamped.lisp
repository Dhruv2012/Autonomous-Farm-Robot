; Auto-generated. Do not edit!


(cl:in-package marti_common_msgs-msg)


;//! \htmlinclude Int8Stamped.msg.html

(cl:defclass <Int8Stamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Int8Stamped (<Int8Stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int8Stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int8Stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_common_msgs-msg:<Int8Stamped> is deprecated: use marti_common_msgs-msg:Int8Stamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Int8Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:header-val is deprecated.  Use marti_common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Int8Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:value-val is deprecated.  Use marti_common_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int8Stamped>) ostream)
  "Serializes a message object of type '<Int8Stamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int8Stamped>) istream)
  "Deserializes a message object of type '<Int8Stamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int8Stamped>)))
  "Returns string type for a message object of type '<Int8Stamped>"
  "marti_common_msgs/Int8Stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int8Stamped)))
  "Returns string type for a message object of type 'Int8Stamped"
  "marti_common_msgs/Int8Stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int8Stamped>)))
  "Returns md5sum for a message object of type '<Int8Stamped>"
  "fefcef9bb97ce300928c29d0d0a72f66")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int8Stamped)))
  "Returns md5sum for a message object of type 'Int8Stamped"
  "fefcef9bb97ce300928c29d0d0a72f66")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int8Stamped>)))
  "Returns full string definition for message of type '<Int8Stamped>"
  (cl:format cl:nil "Header header~%~%int8 value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int8Stamped)))
  "Returns full string definition for message of type 'Int8Stamped"
  (cl:format cl:nil "Header header~%~%int8 value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int8Stamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int8Stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'Int8Stamped
    (cl:cons ':header (header msg))
    (cl:cons ':value (value msg))
))
