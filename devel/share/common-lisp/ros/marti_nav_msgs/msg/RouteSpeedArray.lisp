; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-msg)


;//! \htmlinclude RouteSpeedArray.msg.html

(cl:defclass <RouteSpeedArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (speeds
    :reader speeds
    :initarg :speeds
    :type (cl:vector marti_nav_msgs-msg:RouteSpeed)
   :initform (cl:make-array 0 :element-type 'marti_nav_msgs-msg:RouteSpeed :initial-element (cl:make-instance 'marti_nav_msgs-msg:RouteSpeed))))
)

(cl:defclass RouteSpeedArray (<RouteSpeedArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RouteSpeedArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RouteSpeedArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-msg:<RouteSpeedArray> is deprecated: use marti_nav_msgs-msg:RouteSpeedArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RouteSpeedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:header-val is deprecated.  Use marti_nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'speeds-val :lambda-list '(m))
(cl:defmethod speeds-val ((m <RouteSpeedArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:speeds-val is deprecated.  Use marti_nav_msgs-msg:speeds instead.")
  (speeds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RouteSpeedArray>) ostream)
  "Serializes a message object of type '<RouteSpeedArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'speeds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'speeds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RouteSpeedArray>) istream)
  "Deserializes a message object of type '<RouteSpeedArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'speeds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'speeds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marti_nav_msgs-msg:RouteSpeed))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RouteSpeedArray>)))
  "Returns string type for a message object of type '<RouteSpeedArray>"
  "marti_nav_msgs/RouteSpeedArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RouteSpeedArray)))
  "Returns string type for a message object of type 'RouteSpeedArray"
  "marti_nav_msgs/RouteSpeedArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RouteSpeedArray>)))
  "Returns md5sum for a message object of type '<RouteSpeedArray>"
  "c5b2e8db78eaab7eafdb3ecf8d4e017f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RouteSpeedArray)))
  "Returns md5sum for a message object of type 'RouteSpeedArray"
  "c5b2e8db78eaab7eafdb3ecf8d4e017f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RouteSpeedArray>)))
  "Returns full string definition for message of type '<RouteSpeedArray>"
  (cl:format cl:nil "# List of target speeds along a route.~%~%Header header        # only stamp used~%~%RouteSpeed[] speeds~%# List of speeds along a route. The interpretation of the list is~%# application dependent.  It may represent a list of unrelated speeds,~%# a distance vs speed curve along a route, etc.~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/RouteSpeed~%# Speed at a position along route~%~%Header  header   # only stamp used~%string  id       # unique ID of nearest point~%float32 distance # forward along route, in meters from point identified by id~%                 # field (negative values indicate the distance is backward~%                 # along the route)~%float32 speed    # desired speed at the specified position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RouteSpeedArray)))
  "Returns full string definition for message of type 'RouteSpeedArray"
  (cl:format cl:nil "# List of target speeds along a route.~%~%Header header        # only stamp used~%~%RouteSpeed[] speeds~%# List of speeds along a route. The interpretation of the list is~%# application dependent.  It may represent a list of unrelated speeds,~%# a distance vs speed curve along a route, etc.~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/RouteSpeed~%# Speed at a position along route~%~%Header  header   # only stamp used~%string  id       # unique ID of nearest point~%float32 distance # forward along route, in meters from point identified by id~%                 # field (negative values indicate the distance is backward~%                 # along the route)~%float32 speed    # desired speed at the specified position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RouteSpeedArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'speeds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RouteSpeedArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RouteSpeedArray
    (cl:cons ':header (header msg))
    (cl:cons ':speeds (speeds msg))
))
