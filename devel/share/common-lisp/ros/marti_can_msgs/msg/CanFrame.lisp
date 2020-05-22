; Auto-generated. Do not edit!


(cl:in-package marti_can_msgs-msg)


;//! \htmlinclude CanFrame.msg.html

(cl:defclass <CanFrame> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (msg_type
    :reader msg_type
    :initarg :msg_type
    :type cl:fixnum
    :initform 0)
   (data_length
    :reader data_length
    :initarg :data_length
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 8 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass CanFrame (<CanFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CanFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CanFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_can_msgs-msg:<CanFrame> is deprecated: use marti_can_msgs-msg:CanFrame instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CanFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_can_msgs-msg:header-val is deprecated.  Use marti_can_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <CanFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_can_msgs-msg:ID-val is deprecated.  Use marti_can_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'msg_type-val :lambda-list '(m))
(cl:defmethod msg_type-val ((m <CanFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_can_msgs-msg:msg_type-val is deprecated.  Use marti_can_msgs-msg:msg_type instead.")
  (msg_type m))

(cl:ensure-generic-function 'data_length-val :lambda-list '(m))
(cl:defmethod data_length-val ((m <CanFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_can_msgs-msg:data_length-val is deprecated.  Use marti_can_msgs-msg:data_length instead.")
  (data_length m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <CanFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_can_msgs-msg:data-val is deprecated.  Use marti_can_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CanFrame>)))
    "Constants for message type '<CanFrame>"
  '((:MSGTYPE_STANDARD . 0)
    (:MSGTYPE_RTR . 1)
    (:MSGTYPE_EXTENDED . 2)
    (:MSGTYPE_STATUS . 128))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CanFrame)))
    "Constants for message type 'CanFrame"
  '((:MSGTYPE_STANDARD . 0)
    (:MSGTYPE_RTR . 1)
    (:MSGTYPE_EXTENDED . 2)
    (:MSGTYPE_STATUS . 128))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CanFrame>) ostream)
  "Serializes a message object of type '<CanFrame>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_length)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CanFrame>) istream)
  "Deserializes a message object of type '<CanFrame>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'msg_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_length)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 8)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CanFrame>)))
  "Returns string type for a message object of type '<CanFrame>"
  "marti_can_msgs/CanFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CanFrame)))
  "Returns string type for a message object of type 'CanFrame"
  "marti_can_msgs/CanFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CanFrame>)))
  "Returns md5sum for a message object of type '<CanFrame>"
  "c60d055845d0e93bcf7d8d8dca084be7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CanFrame)))
  "Returns md5sum for a message object of type 'CanFrame"
  "c60d055845d0e93bcf7d8d8dca084be7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CanFrame>)))
  "Returns full string definition for message of type '<CanFrame>"
  (cl:format cl:nil "Header header~%# Header timestamp is the time when all messages were acquired~%# and synchronized.~%~%uint32 ID~%# CAN Message ID - This is 11 bits for standard frames or 29 bits for~%# extended frames.~%~%uint8 msg_type	  ~%# CAN Message Type.  This should be one of the constants defined~%# below.  (Constants used to match pcan.h from Peak's driver.)~%uint8 MSGTYPE_STANDARD = 0~%uint8 MSGTYPE_RTR = 1~%uint8 MSGTYPE_EXTENDED = 2~%uint8 MSGTYPE_STATUS = 128~%~%uint8 data_length~%# Count of data bytes (0..8)~%~%uint8[8] data~%# Data bytes, up to 8~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CanFrame)))
  "Returns full string definition for message of type 'CanFrame"
  (cl:format cl:nil "Header header~%# Header timestamp is the time when all messages were acquired~%# and synchronized.~%~%uint32 ID~%# CAN Message ID - This is 11 bits for standard frames or 29 bits for~%# extended frames.~%~%uint8 msg_type	  ~%# CAN Message Type.  This should be one of the constants defined~%# below.  (Constants used to match pcan.h from Peak's driver.)~%uint8 MSGTYPE_STANDARD = 0~%uint8 MSGTYPE_RTR = 1~%uint8 MSGTYPE_EXTENDED = 2~%uint8 MSGTYPE_STATUS = 128~%~%uint8 data_length~%# Count of data bytes (0..8)~%~%uint8[8] data~%# Data bytes, up to 8~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CanFrame>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CanFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'CanFrame
    (cl:cons ':header (header msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':msg_type (msg_type msg))
    (cl:cons ':data_length (data_length msg))
    (cl:cons ':data (data msg))
))
