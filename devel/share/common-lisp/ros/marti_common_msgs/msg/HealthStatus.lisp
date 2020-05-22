; Auto-generated. Do not edit!


(cl:in-package marti_common_msgs-msg)


;//! \htmlinclude HealthStatus.msg.html

(cl:defclass <HealthStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass HealthStatus (<HealthStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HealthStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HealthStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_common_msgs-msg:<HealthStatus> is deprecated: use marti_common_msgs-msg:HealthStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HealthStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:header-val is deprecated.  Use marti_common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <HealthStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:status-val is deprecated.  Use marti_common_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <HealthStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:message-val is deprecated.  Use marti_common_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HealthStatus>)))
    "Constants for message type '<HealthStatus>"
  '((:OK . 0)
    (:WARN . 1)
    (:ERROR . 2)
    (:STALE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HealthStatus)))
    "Constants for message type 'HealthStatus"
  '((:OK . 0)
    (:WARN . 1)
    (:ERROR . 2)
    (:STALE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HealthStatus>) ostream)
  "Serializes a message object of type '<HealthStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HealthStatus>) istream)
  "Deserializes a message object of type '<HealthStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HealthStatus>)))
  "Returns string type for a message object of type '<HealthStatus>"
  "marti_common_msgs/HealthStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HealthStatus)))
  "Returns string type for a message object of type 'HealthStatus"
  "marti_common_msgs/HealthStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HealthStatus>)))
  "Returns md5sum for a message object of type '<HealthStatus>"
  "a825206a44c6c9bc395ddf748ca9fdfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HealthStatus)))
  "Returns md5sum for a message object of type 'HealthStatus"
  "a825206a44c6c9bc395ddf748ca9fdfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HealthStatus>)))
  "Returns full string definition for message of type '<HealthStatus>"
  (cl:format cl:nil "# This message is intended for use as a light-weight machine status indicator for robot consumption~%# whereas Diagnostics are for human consumption~%~%int8 OK=0    # Initialized with no issues~%int8 WARN=1  # Component is operating but the data may be inaccurate or there may be minor problems~%int8 ERROR=2 # Component has encountered a serious problem and cannot or will not operate~%int8 STALE=3 # Uninitialized or cannot determine status~%~%Header header~%~%int8   status~%string message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HealthStatus)))
  "Returns full string definition for message of type 'HealthStatus"
  (cl:format cl:nil "# This message is intended for use as a light-weight machine status indicator for robot consumption~%# whereas Diagnostics are for human consumption~%~%int8 OK=0    # Initialized with no issues~%int8 WARN=1  # Component is operating but the data may be inaccurate or there may be minor problems~%int8 ERROR=2 # Component has encountered a serious problem and cannot or will not operate~%int8 STALE=3 # Uninitialized or cannot determine status~%~%Header header~%~%int8   status~%string message~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HealthStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HealthStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'HealthStatus
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':message (message msg))
))
