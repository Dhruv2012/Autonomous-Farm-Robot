; Auto-generated. Do not edit!


(cl:in-package marti_common_msgs-msg)


;//! \htmlinclude Matrix3x3Stamped.msg.html

(cl:defclass <Matrix3x3Stamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (matrix
    :reader matrix
    :initarg :matrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Matrix3x3Stamped (<Matrix3x3Stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Matrix3x3Stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Matrix3x3Stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_common_msgs-msg:<Matrix3x3Stamped> is deprecated: use marti_common_msgs-msg:Matrix3x3Stamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Matrix3x3Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:header-val is deprecated.  Use marti_common_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'matrix-val :lambda-list '(m))
(cl:defmethod matrix-val ((m <Matrix3x3Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_common_msgs-msg:matrix-val is deprecated.  Use marti_common_msgs-msg:matrix instead.")
  (matrix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Matrix3x3Stamped>) ostream)
  "Serializes a message object of type '<Matrix3x3Stamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'matrix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Matrix3x3Stamped>) istream)
  "Deserializes a message object of type '<Matrix3x3Stamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'matrix) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'matrix)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Matrix3x3Stamped>)))
  "Returns string type for a message object of type '<Matrix3x3Stamped>"
  "marti_common_msgs/Matrix3x3Stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Matrix3x3Stamped)))
  "Returns string type for a message object of type 'Matrix3x3Stamped"
  "marti_common_msgs/Matrix3x3Stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Matrix3x3Stamped>)))
  "Returns md5sum for a message object of type '<Matrix3x3Stamped>"
  "6f6aca2b78f71bd7b958ad349352f091")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Matrix3x3Stamped)))
  "Returns md5sum for a message object of type 'Matrix3x3Stamped"
  "6f6aca2b78f71bd7b958ad349352f091")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Matrix3x3Stamped>)))
  "Returns full string definition for message of type '<Matrix3x3Stamped>"
  (cl:format cl:nil "Header header~%~%float64[9] matrix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Matrix3x3Stamped)))
  "Returns full string definition for message of type 'Matrix3x3Stamped"
  (cl:format cl:nil "Header header~%~%float64[9] matrix~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Matrix3x3Stamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Matrix3x3Stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'Matrix3x3Stamped
    (cl:cons ':header (header msg))
    (cl:cons ':matrix (matrix msg))
))
