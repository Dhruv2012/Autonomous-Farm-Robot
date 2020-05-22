; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-msg)


;//! \htmlinclude RouteOffset.msg.html

(cl:defclass <RouteOffset> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (relative_pose
    :reader relative_pose
    :initarg :relative_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (route_position
    :reader route_position
    :initarg :route_position
    :type marti_nav_msgs-msg:RoutePosition
    :initform (cl:make-instance 'marti_nav_msgs-msg:RoutePosition)))
)

(cl:defclass RouteOffset (<RouteOffset>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RouteOffset>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RouteOffset)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-msg:<RouteOffset> is deprecated: use marti_nav_msgs-msg:RouteOffset instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RouteOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:header-val is deprecated.  Use marti_nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'relative_pose-val :lambda-list '(m))
(cl:defmethod relative_pose-val ((m <RouteOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:relative_pose-val is deprecated.  Use marti_nav_msgs-msg:relative_pose instead.")
  (relative_pose m))

(cl:ensure-generic-function 'route_position-val :lambda-list '(m))
(cl:defmethod route_position-val ((m <RouteOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:route_position-val is deprecated.  Use marti_nav_msgs-msg:route_position instead.")
  (route_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RouteOffset>) ostream)
  "Serializes a message object of type '<RouteOffset>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'route_position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RouteOffset>) istream)
  "Deserializes a message object of type '<RouteOffset>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'route_position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RouteOffset>)))
  "Returns string type for a message object of type '<RouteOffset>"
  "marti_nav_msgs/RouteOffset")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RouteOffset)))
  "Returns string type for a message object of type 'RouteOffset"
  "marti_nav_msgs/RouteOffset")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RouteOffset>)))
  "Returns md5sum for a message object of type '<RouteOffset>"
  "69208bbf68ef432cb1b3530d6fdda6cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RouteOffset)))
  "Returns md5sum for a message object of type 'RouteOffset"
  "69208bbf68ef432cb1b3530d6fdda6cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RouteOffset>)))
  "Returns full string definition for message of type '<RouteOffset>"
  (cl:format cl:nil "# Gives a position and orientation relative to a position on a route~%~%Header header                                 # only stamp used~%~%geometry_msgs/Pose relative_pose              # pose relative to position on route~%marti_nav_msgs/RoutePosition route_position   # position on route~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_nav_msgs/RoutePosition~%# Position along route~%~%Header  header   # only stamp used~%string  route_id # unique ID of the corresponding route~%string  id       # unique ID of nearest point~%float32 distance # forward along route, in meters from point identified by id~%                 # field (negative values indicate the distance is backward~%                 # along the route)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RouteOffset)))
  "Returns full string definition for message of type 'RouteOffset"
  (cl:format cl:nil "# Gives a position and orientation relative to a position on a route~%~%Header header                                 # only stamp used~%~%geometry_msgs/Pose relative_pose              # pose relative to position on route~%marti_nav_msgs/RoutePosition route_position   # position on route~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_nav_msgs/RoutePosition~%# Position along route~%~%Header  header   # only stamp used~%string  route_id # unique ID of the corresponding route~%string  id       # unique ID of nearest point~%float32 distance # forward along route, in meters from point identified by id~%                 # field (negative values indicate the distance is backward~%                 # along the route)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RouteOffset>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'route_position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RouteOffset>))
  "Converts a ROS message object to a list"
  (cl:list 'RouteOffset
    (cl:cons ':header (header msg))
    (cl:cons ':relative_pose (relative_pose msg))
    (cl:cons ':route_position (route_position msg))
))
