; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-msg)


;//! \htmlinclude TrackedObjectArray.msg.html

(cl:defclass <TrackedObjectArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector marti_nav_msgs-msg:TrackedObject)
   :initform (cl:make-array 0 :element-type 'marti_nav_msgs-msg:TrackedObject :initial-element (cl:make-instance 'marti_nav_msgs-msg:TrackedObject))))
)

(cl:defclass TrackedObjectArray (<TrackedObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackedObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackedObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-msg:<TrackedObjectArray> is deprecated: use marti_nav_msgs-msg:TrackedObjectArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrackedObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:header-val is deprecated.  Use marti_nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <TrackedObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:objects-val is deprecated.  Use marti_nav_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackedObjectArray>) ostream)
  "Serializes a message object of type '<TrackedObjectArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackedObjectArray>) istream)
  "Deserializes a message object of type '<TrackedObjectArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marti_nav_msgs-msg:TrackedObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackedObjectArray>)))
  "Returns string type for a message object of type '<TrackedObjectArray>"
  "marti_nav_msgs/TrackedObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackedObjectArray)))
  "Returns string type for a message object of type 'TrackedObjectArray"
  "marti_nav_msgs/TrackedObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackedObjectArray>)))
  "Returns md5sum for a message object of type '<TrackedObjectArray>"
  "eeceef8756dddeb96eb4d6e607b3e5fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackedObjectArray)))
  "Returns md5sum for a message object of type 'TrackedObjectArray"
  "eeceef8756dddeb96eb4d6e607b3e5fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackedObjectArray>)))
  "Returns full string definition for message of type '<TrackedObjectArray>"
  (cl:format cl:nil "# This message is used to communicate tracking data for one or more objects.~%~%Header header            # The frame that the objects are defined in.~%~%TrackedObject[] objects  # The tracked objects.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/TrackedObject~%uint8 VEHICLE=0~%uint8 PEDESTRIAN=1~%uint8 UNKNOWN=255~%~%Header header  # Frame and timestamp~%uint16 id      # Id~%~%geometry_msgs/PoseWithCovariance pose      # Pose in the header frame.~%geometry_msgs/TwistWithCovariance velocity # Velocity in the header frame.~%geometry_msgs/Vector3 linear_acceleration  # Acceleration in the header frame.~%float64[9] linear_acceleration_covariance  # Row major x, y z~%~%geometry_msgs/Point[] polygon~%# A list of points that define the obstacle's geometry in horizontal~%# plane relative to the obstacle's pose.  The polygon is implicitly~%# closed by a segment between the last and first points.~%~%# Estimated oriented bounding box for object classes with rectangular shapes.~%float32 length                 # Length of the object in meters~%float32 length_quality         # Length quality number [0,1]~%float32 width                  # Width of the object in meters~%float32 width_quality          # Width quality number [0,1]~%~%uint8 classification           # Classification~%float32 classification_quality # Classification quality number [0,1]~%~%float32 existence_probability  # Existence probability [0,1]~%~%duration age_duration          # Age of the track since first detection.~%duration prediction_duration   # Age of the prediction since the active flag was last true.~%~%bool active                    # Active flag for if the objects is currently being detected.~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackedObjectArray)))
  "Returns full string definition for message of type 'TrackedObjectArray"
  (cl:format cl:nil "# This message is used to communicate tracking data for one or more objects.~%~%Header header            # The frame that the objects are defined in.~%~%TrackedObject[] objects  # The tracked objects.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: marti_nav_msgs/TrackedObject~%uint8 VEHICLE=0~%uint8 PEDESTRIAN=1~%uint8 UNKNOWN=255~%~%Header header  # Frame and timestamp~%uint16 id      # Id~%~%geometry_msgs/PoseWithCovariance pose      # Pose in the header frame.~%geometry_msgs/TwistWithCovariance velocity # Velocity in the header frame.~%geometry_msgs/Vector3 linear_acceleration  # Acceleration in the header frame.~%float64[9] linear_acceleration_covariance  # Row major x, y z~%~%geometry_msgs/Point[] polygon~%# A list of points that define the obstacle's geometry in horizontal~%# plane relative to the obstacle's pose.  The polygon is implicitly~%# closed by a segment between the last and first points.~%~%# Estimated oriented bounding box for object classes with rectangular shapes.~%float32 length                 # Length of the object in meters~%float32 length_quality         # Length quality number [0,1]~%float32 width                  # Width of the object in meters~%float32 width_quality          # Width quality number [0,1]~%~%uint8 classification           # Classification~%float32 classification_quality # Classification quality number [0,1]~%~%float32 existence_probability  # Existence probability [0,1]~%~%duration age_duration          # Age of the track since first detection.~%duration prediction_duration   # Age of the prediction since the active flag was last true.~%~%bool active                    # Active flag for if the objects is currently being detected.~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackedObjectArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackedObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackedObjectArray
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
