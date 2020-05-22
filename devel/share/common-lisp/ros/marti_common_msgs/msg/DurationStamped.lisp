; Auto-generated. Do not edit!


(cl:in-package marti_common_msgs-msg)


;//! \htmlinclude DurationStamped.msg.html

(cl:defclass <DurationStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (value
    :reader value
    :initarg :value
    :type cl:real
    :initform 0))
)

(cl:defclass DurationStamped (<DurationStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DurationStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DurationStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_common_msgs-msg:<DurationStamped> is deprecated: use marti_common_msgs-msg:DurationStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DurationStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:header-val is deprecated.  Use marti_common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DurationStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:value-val is deprecated.  Use marti_common_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DurationStamped>) ostream)
  "Serializes a message object of type '<DurationStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'value)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'value) (cl:floor (cl:slot-value msg 'value)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DurationStamped>) istream)
  "Deserializes a message object of type '<DurationStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DurationStamped>)))
  "Returns string type for a message object of type '<DurationStamped>"
  "marti_common_msgs/DurationStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DurationStamped)))
  "Returns string type for a message object of type 'DurationStamped"
  "marti_common_msgs/DurationStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DurationStamped>)))
  "Returns md5sum for a message object of type '<DurationStamped>"
  "abd101ec65114034e9bd0e187b790140")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DurationStamped)))
  "Returns md5sum for a message object of type 'DurationStamped"
  "abd101ec65114034e9bd0e187b790140")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DurationStamped>)))
  "Returns full string definition for message of type '<DurationStamped>"
  (cl:format cl:nil "Header header~%~%duration value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DurationStamped)))
  "Returns full string definition for message of type 'DurationStamped"
  (cl:format cl:nil "Header header~%~%duration value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DurationStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DurationStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'DurationStamped
    (cl:cons ':header (header msg))
    (cl:cons ':value (value msg))
))
