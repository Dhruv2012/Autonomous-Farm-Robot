; Auto-generated. Do not edit!


(cl:in-package marti_perception_msgs-msg)


;//! \htmlinclude PedestrianImageID.msg.html

(cl:defclass <PedestrianImageID> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (pixel_x
    :reader pixel_x
    :initarg :pixel_x
    :type cl:integer
    :initform 0)
   (pixel_y
    :reader pixel_y
    :initarg :pixel_y
    :type cl:integer
    :initform 0)
   (image_width
    :reader image_width
    :initarg :image_width
    :type cl:integer
    :initform 0)
   (image_height
    :reader image_height
    :initarg :image_height
    :type cl:integer
    :initform 0))
)

(cl:defclass PedestrianImageID (<PedestrianImageID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PedestrianImageID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PedestrianImageID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_perception_msgs-msg:<PedestrianImageID> is deprecated: use marti_perception_msgs-msg:PedestrianImageID instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PedestrianImageID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_perception_msgs-msg:header-val is deprecated.  Use marti_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'pixel_x-val :lambda-list '(m))
(cl:defmethod pixel_x-val ((m <PedestrianImageID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_perception_msgs-msg:pixel_x-val is deprecated.  Use marti_perception_msgs-msg:pixel_x instead.")
  (pixel_x m))

(cl:ensure-generic-function 'pixel_y-val :lambda-list '(m))
(cl:defmethod pixel_y-val ((m <PedestrianImageID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_perception_msgs-msg:pixel_y-val is deprecated.  Use marti_perception_msgs-msg:pixel_y instead.")
  (pixel_y m))

(cl:ensure-generic-function 'image_width-val :lambda-list '(m))
(cl:defmethod image_width-val ((m <PedestrianImageID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_perception_msgs-msg:image_width-val is deprecated.  Use marti_perception_msgs-msg:image_width instead.")
  (image_width m))

(cl:ensure-generic-function 'image_height-val :lambda-list '(m))
(cl:defmethod image_height-val ((m <PedestrianImageID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_perception_msgs-msg:image_height-val is deprecated.  Use marti_perception_msgs-msg:image_height instead.")
  (image_height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PedestrianImageID>) ostream)
  "Serializes a message object of type '<PedestrianImageID>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'pixel_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pixel_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'image_width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'image_height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PedestrianImageID>) istream)
  "Deserializes a message object of type '<PedestrianImageID>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pixel_x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pixel_y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PedestrianImageID>)))
  "Returns string type for a message object of type '<PedestrianImageID>"
  "marti_perception_msgs/PedestrianImageID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PedestrianImageID)))
  "Returns string type for a message object of type 'PedestrianImageID"
  "marti_perception_msgs/PedestrianImageID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PedestrianImageID>)))
  "Returns md5sum for a message object of type '<PedestrianImageID>"
  "91d4875ed8a841454974fa0ce176cc1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PedestrianImageID)))
  "Returns md5sum for a message object of type 'PedestrianImageID"
  "91d4875ed8a841454974fa0ce176cc1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PedestrianImageID>)))
  "Returns full string definition for message of type '<PedestrianImageID>"
  (cl:format cl:nil "Header header~%~%int32 pixel_x~%int32 pixel_y~%int32 image_width	  # in pixels~%int32 image_height	# in pixels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PedestrianImageID)))
  "Returns full string definition for message of type 'PedestrianImageID"
  (cl:format cl:nil "Header header~%~%int32 pixel_x~%int32 pixel_y~%int32 image_width	  # in pixels~%int32 image_height	# in pixels~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PedestrianImageID>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PedestrianImageID>))
  "Converts a ROS message object to a list"
  (cl:list 'PedestrianImageID
    (cl:cons ':header (header msg))
    (cl:cons ':pixel_x (pixel_x msg))
    (cl:cons ':pixel_y (pixel_y msg))
    (cl:cons ':image_width (image_width msg))
    (cl:cons ':image_height (image_height msg))
))
