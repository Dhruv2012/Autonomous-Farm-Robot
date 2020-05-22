; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-msg)


;//! \htmlinclude LeadVehicle.msg.html

(cl:defclass <LeadVehicle> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (headwayDistance
    :reader headwayDistance
    :initarg :headwayDistance
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (xPos
    :reader xPos
    :initarg :xPos
    :type cl:float
    :initform 0.0)
   (yPos
    :reader yPos
    :initarg :yPos
    :type cl:float
    :initform 0.0)
   (classification
    :reader classification
    :initarg :classification
    :type cl:fixnum
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LeadVehicle (<LeadVehicle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LeadVehicle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LeadVehicle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-msg:<LeadVehicle> is deprecated: use marti_nav_msgs-msg:LeadVehicle instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LeadVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:header-val is deprecated.  Use marti_nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'headwayDistance-val :lambda-list '(m))
(cl:defmethod headwayDistance-val ((m <LeadVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:headwayDistance-val is deprecated.  Use marti_nav_msgs-msg:headwayDistance instead.")
  (headwayDistance m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <LeadVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:speed-val is deprecated.  Use marti_nav_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <LeadVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:heading-val is deprecated.  Use marti_nav_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'xPos-val :lambda-list '(m))
(cl:defmethod xPos-val ((m <LeadVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:xPos-val is deprecated.  Use marti_nav_msgs-msg:xPos instead.")
  (xPos m))

(cl:ensure-generic-function 'yPos-val :lambda-list '(m))
(cl:defmethod yPos-val ((m <LeadVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:yPos-val is deprecated.  Use marti_nav_msgs-msg:yPos instead.")
  (yPos m))

(cl:ensure-generic-function 'classification-val :lambda-list '(m))
(cl:defmethod classification-val ((m <LeadVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:classification-val is deprecated.  Use marti_nav_msgs-msg:classification instead.")
  (classification m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LeadVehicle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:type-val is deprecated.  Use marti_nav_msgs-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LeadVehicle>) ostream)
  "Serializes a message object of type '<LeadVehicle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'headwayDistance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'xPos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yPos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'classification)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LeadVehicle>) istream)
  "Deserializes a message object of type '<LeadVehicle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'headwayDistance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xPos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yPos) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'classification) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LeadVehicle>)))
  "Returns string type for a message object of type '<LeadVehicle>"
  "marti_nav_msgs/LeadVehicle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LeadVehicle)))
  "Returns string type for a message object of type 'LeadVehicle"
  "marti_nav_msgs/LeadVehicle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LeadVehicle>)))
  "Returns md5sum for a message object of type '<LeadVehicle>"
  "123a04e085bfddd727efd0e68809c765")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LeadVehicle)))
  "Returns md5sum for a message object of type 'LeadVehicle"
  "123a04e085bfddd727efd0e68809c765")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LeadVehicle>)))
  "Returns full string definition for message of type '<LeadVehicle>"
  (cl:format cl:nil "Header header~%~%float32 headwayDistance~%float32 speed~%float32 heading~%float32 xPos~%float32 yPos~%int8 classification~%int8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LeadVehicle)))
  "Returns full string definition for message of type 'LeadVehicle"
  (cl:format cl:nil "Header header~%~%float32 headwayDistance~%float32 speed~%float32 heading~%float32 xPos~%float32 yPos~%int8 classification~%int8 type~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LeadVehicle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LeadVehicle>))
  "Converts a ROS message object to a list"
  (cl:list 'LeadVehicle
    (cl:cons ':header (header msg))
    (cl:cons ':headwayDistance (headwayDistance msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':xPos (xPos msg))
    (cl:cons ':yPos (yPos msg))
    (cl:cons ':classification (classification msg))
    (cl:cons ':type (type msg))
))
