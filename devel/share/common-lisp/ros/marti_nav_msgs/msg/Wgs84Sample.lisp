; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-msg)


;//! \htmlinclude Wgs84Sample.msg.html

(cl:defclass <Wgs84Sample> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (odom
    :reader odom
    :initarg :odom
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (wgs84
    :reader wgs84
    :initarg :wgs84
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (wgs84_covariance
    :reader wgs84_covariance
    :initarg :wgs84_covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Wgs84Sample (<Wgs84Sample>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Wgs84Sample>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Wgs84Sample)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-msg:<Wgs84Sample> is deprecated: use marti_nav_msgs-msg:Wgs84Sample instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Wgs84Sample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:header-val is deprecated.  Use marti_nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'odom-val :lambda-list '(m))
(cl:defmethod odom-val ((m <Wgs84Sample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:odom-val is deprecated.  Use marti_nav_msgs-msg:odom instead.")
  (odom m))

(cl:ensure-generic-function 'wgs84-val :lambda-list '(m))
(cl:defmethod wgs84-val ((m <Wgs84Sample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:wgs84-val is deprecated.  Use marti_nav_msgs-msg:wgs84 instead.")
  (wgs84 m))

(cl:ensure-generic-function 'wgs84_covariance-val :lambda-list '(m))
(cl:defmethod wgs84_covariance-val ((m <Wgs84Sample>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:wgs84_covariance-val is deprecated.  Use marti_nav_msgs-msg:wgs84_covariance instead.")
  (wgs84_covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Wgs84Sample>) ostream)
  "Serializes a message object of type '<Wgs84Sample>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'odom) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wgs84) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'wgs84_covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Wgs84Sample>) istream)
  "Deserializes a message object of type '<Wgs84Sample>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'odom) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wgs84) istream)
  (cl:setf (cl:slot-value msg 'wgs84_covariance) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'wgs84_covariance)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Wgs84Sample>)))
  "Returns string type for a message object of type '<Wgs84Sample>"
  "marti_nav_msgs/Wgs84Sample")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Wgs84Sample)))
  "Returns string type for a message object of type 'Wgs84Sample"
  "marti_nav_msgs/Wgs84Sample")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Wgs84Sample>)))
  "Returns md5sum for a message object of type '<Wgs84Sample>"
  "5241cb1ac52fc7a58f710c9a9774badc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Wgs84Sample)))
  "Returns md5sum for a message object of type 'Wgs84Sample"
  "5241cb1ac52fc7a58f710c9a9774badc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Wgs84Sample>)))
  "Returns full string definition for message of type '<Wgs84Sample>"
  (cl:format cl:nil "# This message contains an absolute position measurement (in~%# spherical/WGS-84 coordinates) and the corresponding sensor~%# (e.g. antenna) location in a vehicle's relative odometry coordinate~%# frame.~%~%Header header~%# The header contains the /tf name of the relative odometry frame and~%# the timestamp of the measurement.~%~%geometry_msgs/Point odom~%# The position of the sample in the relative odometry frame.~%~%geometry_msgs/Point wgs84~%# The WGS84 measurement (x = longitude in decimal degrees, y =~%# latitude in decimal degrees, z = altitude over the reference~%# ellipsoid in meters)~%~%float64[9] wgs84_covariance~%# An estimate of WGS-84 measurement's covariance.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Wgs84Sample)))
  "Returns full string definition for message of type 'Wgs84Sample"
  (cl:format cl:nil "# This message contains an absolute position measurement (in~%# spherical/WGS-84 coordinates) and the corresponding sensor~%# (e.g. antenna) location in a vehicle's relative odometry coordinate~%# frame.~%~%Header header~%# The header contains the /tf name of the relative odometry frame and~%# the timestamp of the measurement.~%~%geometry_msgs/Point odom~%# The position of the sample in the relative odometry frame.~%~%geometry_msgs/Point wgs84~%# The WGS84 measurement (x = longitude in decimal degrees, y =~%# latitude in decimal degrees, z = altitude over the reference~%# ellipsoid in meters)~%~%float64[9] wgs84_covariance~%# An estimate of WGS-84 measurement's covariance.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Wgs84Sample>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'odom))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wgs84))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'wgs84_covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Wgs84Sample>))
  "Converts a ROS message object to a list"
  (cl:list 'Wgs84Sample
    (cl:cons ':header (header msg))
    (cl:cons ':odom (odom msg))
    (cl:cons ':wgs84 (wgs84 msg))
    (cl:cons ':wgs84_covariance (wgs84_covariance msg))
))
