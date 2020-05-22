; Auto-generated. Do not edit!


(cl:in-package marti_common_msgs-msg)


;//! \htmlinclude KeyValueArray.msg.html

(cl:defclass <KeyValueArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (items
    :reader items
    :initarg :items
    :type (cl:vector marti_common_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'marti_common_msgs-msg:KeyValue :initial-element (cl:make-instance 'marti_common_msgs-msg:KeyValue))))
)

(cl:defclass KeyValueArray (<KeyValueArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyValueArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyValueArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_common_msgs-msg:<KeyValueArray> is deprecated: use marti_common_msgs-msg:KeyValueArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <KeyValueArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:header-val is deprecated.  Use marti_common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'items-val :lambda-list '(m))
(cl:defmethod items-val ((m <KeyValueArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:items-val is deprecated.  Use marti_common_msgs-msg:items instead.")
  (items m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyValueArray>) ostream)
  "Serializes a message object of type '<KeyValueArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'items))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'items))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyValueArray>) istream)
  "Deserializes a message object of type '<KeyValueArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'items) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'items)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marti_common_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyValueArray>)))
  "Returns string type for a message object of type '<KeyValueArray>"
  "marti_common_msgs/KeyValueArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyValueArray)))
  "Returns string type for a message object of type 'KeyValueArray"
  "marti_common_msgs/KeyValueArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyValueArray>)))
  "Returns md5sum for a message object of type '<KeyValueArray>"
  "3b303032d5c2c08f75f9a40a839cb16c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyValueArray)))
  "Returns md5sum for a message object of type 'KeyValueArray"
  "3b303032d5c2c08f75f9a40a839cb16c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyValueArray>)))
  "Returns full string definition for message of type '<KeyValueArray>"
  (cl:format cl:nil "# A generic message for publishing a list of key value pairs directly.~%~%Header header~%~%KeyValue[] items~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyValueArray)))
  "Returns full string definition for message of type 'KeyValueArray"
  (cl:format cl:nil "# A generic message for publishing a list of key value pairs directly.~%~%Header header~%~%KeyValue[] items~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyValueArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'items) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyValueArray>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyValueArray
    (cl:cons ':header (header msg))
    (cl:cons ':items (items msg))
))
