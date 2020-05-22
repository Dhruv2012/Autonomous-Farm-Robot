; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-msg)


;//! \htmlinclude ObstacleArray.msg.html

(cl:defclass <ObstacleArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (obstacles
    :reader obstacles
    :initarg :obstacles
    :type (cl:vector marti_nav_msgs-msg:Obstacle)
   :initform (cl:make-array 0 :element-type 'marti_nav_msgs-msg:Obstacle :initial-element (cl:make-instance 'marti_nav_msgs-msg:Obstacle))))
)

(cl:defclass ObstacleArray (<ObstacleArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstacleArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstacleArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-msg:<ObstacleArray> is deprecated: use marti_nav_msgs-msg:ObstacleArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObstacleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:header-val is deprecated.  Use marti_nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'obstacles-val :lambda-list '(m))
(cl:defmethod obstacles-val ((m <ObstacleArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:obstacles-val is deprecated.  Use marti_nav_msgs-msg:obstacles instead.")
  (obstacles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstacleArray>) ostream)
  "Serializes a message object of type '<ObstacleArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obstacles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obstacles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstacleArray>) istream)
  "Deserializes a message object of type '<ObstacleArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obstacles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obstacles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marti_nav_msgs-msg:Obstacle))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstacleArray>)))
  "Returns string type for a message object of type '<ObstacleArray>"
  "marti_nav_msgs/ObstacleArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstacleArray)))
  "Returns string type for a message object of type 'ObstacleArray"
  "marti_nav_msgs/ObstacleArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstacleArray>)))
  "Returns md5sum for a message object of type '<ObstacleArray>"
  "2af80afb1cab2b611e3a96daa3ee0f01")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstacleArray)))
  "Returns md5sum for a message object of type 'ObstacleArray"
  "2af80afb1cab2b611e3a96daa3ee0f01")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstacleArray>)))
  "Returns full string definition for message of type '<ObstacleArray>"
  (cl:format cl:nil "# This message is used to communicate the position of one or more~%# obstacles.~%~%Header header~%# The header defines the frame that the obstacles are defined in.~%~%Obstacle[] obstacles~%# List of obstacles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/Obstacle~%string id~%# Unique id for the obstacle or empty if not used.~%~%geometry_msgs/Pose pose~%# The pose of the origin of the obstacle.~%~%geometry_msgs/Point[] polygon~%# A list of points that define the obstacle's geometry in horizontal~%# plane relative to the obstacle's pose.  The polygon is implicitly~%# closed by a segment between the last and first points.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstacleArray)))
  "Returns full string definition for message of type 'ObstacleArray"
  (cl:format cl:nil "# This message is used to communicate the position of one or more~%# obstacles.~%~%Header header~%# The header defines the frame that the obstacles are defined in.~%~%Obstacle[] obstacles~%# List of obstacles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/Obstacle~%string id~%# Unique id for the obstacle or empty if not used.~%~%geometry_msgs/Pose pose~%# The pose of the origin of the obstacle.~%~%geometry_msgs/Point[] polygon~%# A list of points that define the obstacle's geometry in horizontal~%# plane relative to the obstacle's pose.  The polygon is implicitly~%# closed by a segment between the last and first points.~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstacleArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obstacles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstacleArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstacleArray
    (cl:cons ':header (header msg))
    (cl:cons ':obstacles (obstacles msg))
))
