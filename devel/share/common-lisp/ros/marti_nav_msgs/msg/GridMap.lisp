; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-msg)


;//! \htmlinclude GridMap.msg.html

(cl:defclass <GridMap> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (top_left
    :reader top_left
    :initarg :top_left
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (top_right
    :reader top_right
    :initarg :top_right
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (bottom_right
    :reader bottom_right
    :initarg :bottom_right
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (bottom_left
    :reader bottom_left
    :initarg :bottom_left
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (map_names
    :reader map_names
    :initarg :map_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (map_data
    :reader map_data
    :initarg :map_data
    :type (cl:vector sensor_msgs-msg:Image)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:Image :initial-element (cl:make-instance 'sensor_msgs-msg:Image))))
)

(cl:defclass GridMap (<GridMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-msg:<GridMap> is deprecated: use marti_nav_msgs-msg:GridMap instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GridMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:header-val is deprecated.  Use marti_nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'top_left-val :lambda-list '(m))
(cl:defmethod top_left-val ((m <GridMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:top_left-val is deprecated.  Use marti_nav_msgs-msg:top_left instead.")
  (top_left m))

(cl:ensure-generic-function 'top_right-val :lambda-list '(m))
(cl:defmethod top_right-val ((m <GridMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:top_right-val is deprecated.  Use marti_nav_msgs-msg:top_right instead.")
  (top_right m))

(cl:ensure-generic-function 'bottom_right-val :lambda-list '(m))
(cl:defmethod bottom_right-val ((m <GridMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:bottom_right-val is deprecated.  Use marti_nav_msgs-msg:bottom_right instead.")
  (bottom_right m))

(cl:ensure-generic-function 'bottom_left-val :lambda-list '(m))
(cl:defmethod bottom_left-val ((m <GridMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:bottom_left-val is deprecated.  Use marti_nav_msgs-msg:bottom_left instead.")
  (bottom_left m))

(cl:ensure-generic-function 'map_names-val :lambda-list '(m))
(cl:defmethod map_names-val ((m <GridMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:map_names-val is deprecated.  Use marti_nav_msgs-msg:map_names instead.")
  (map_names m))

(cl:ensure-generic-function 'map_data-val :lambda-list '(m))
(cl:defmethod map_data-val ((m <GridMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:map_data-val is deprecated.  Use marti_nav_msgs-msg:map_data instead.")
  (map_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridMap>) ostream)
  "Serializes a message object of type '<GridMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'top_left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'top_right) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bottom_right) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bottom_left) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'map_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'map_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridMap>) istream)
  "Deserializes a message object of type '<GridMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'top_left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'top_right) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bottom_right) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bottom_left) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:Image))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridMap>)))
  "Returns string type for a message object of type '<GridMap>"
  "marti_nav_msgs/GridMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridMap)))
  "Returns string type for a message object of type 'GridMap"
  "marti_nav_msgs/GridMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridMap>)))
  "Returns md5sum for a message object of type '<GridMap>"
  "3b88254125f8a40bfc5628e3d7439242")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridMap)))
  "Returns md5sum for a message object of type 'GridMap"
  "3b88254125f8a40bfc5628e3d7439242")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridMap>)))
  "Returns full string definition for message of type '<GridMap>"
  (cl:format cl:nil "Header header~%~%# Map extents in the header frame.~%geometry_msgs/Point top_left~%geometry_msgs/Point top_right~%geometry_msgs/Point bottom_right~%geometry_msgs/Point bottom_left~%~%# Map data layers~%string[]            map_names~%sensor_msgs/Image[] map_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridMap)))
  "Returns full string definition for message of type 'GridMap"
  (cl:format cl:nil "Header header~%~%# Map extents in the header frame.~%geometry_msgs/Point top_left~%geometry_msgs/Point top_right~%geometry_msgs/Point bottom_right~%geometry_msgs/Point bottom_left~%~%# Map data layers~%string[]            map_names~%sensor_msgs/Image[] map_data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'top_left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'top_right))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bottom_right))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bottom_left))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridMap>))
  "Converts a ROS message object to a list"
  (cl:list 'GridMap
    (cl:cons ':header (header msg))
    (cl:cons ':top_left (top_left msg))
    (cl:cons ':top_right (top_right msg))
    (cl:cons ':bottom_right (bottom_right msg))
    (cl:cons ':bottom_left (bottom_left msg))
    (cl:cons ':map_names (map_names msg))
    (cl:cons ':map_data (map_data msg))
))
