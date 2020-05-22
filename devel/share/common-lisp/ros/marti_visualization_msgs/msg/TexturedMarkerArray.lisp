; Auto-generated. Do not edit!


(cl:in-package marti_visualization_msgs-msg)


;//! \htmlinclude TexturedMarkerArray.msg.html

(cl:defclass <TexturedMarkerArray> (roslisp-msg-protocol:ros-message)
  ((markers
    :reader markers
    :initarg :markers
    :type (cl:vector marti_visualization_msgs-msg:TexturedMarker)
   :initform (cl:make-array 0 :element-type 'marti_visualization_msgs-msg:TexturedMarker :initial-element (cl:make-instance 'marti_visualization_msgs-msg:TexturedMarker))))
)

(cl:defclass TexturedMarkerArray (<TexturedMarkerArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TexturedMarkerArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TexturedMarkerArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_visualization_msgs-msg:<TexturedMarkerArray> is deprecated: use marti_visualization_msgs-msg:TexturedMarkerArray instead.")))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <TexturedMarkerArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_visualization_msgs-msg:markers-val is deprecated.  Use marti_visualization_msgs-msg:markers instead.")
  (markers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TexturedMarkerArray>) ostream)
  "Serializes a message object of type '<TexturedMarkerArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'markers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TexturedMarkerArray>) istream)
  "Deserializes a message object of type '<TexturedMarkerArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marti_visualization_msgs-msg:TexturedMarker))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TexturedMarkerArray>)))
  "Returns string type for a message object of type '<TexturedMarkerArray>"
  "marti_visualization_msgs/TexturedMarkerArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TexturedMarkerArray)))
  "Returns string type for a message object of type 'TexturedMarkerArray"
  "marti_visualization_msgs/TexturedMarkerArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TexturedMarkerArray>)))
  "Returns md5sum for a message object of type '<TexturedMarkerArray>"
  "9a529a0eaa0a63d94d3445d26d3fe59a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TexturedMarkerArray)))
  "Returns md5sum for a message object of type 'TexturedMarkerArray"
  "9a529a0eaa0a63d94d3445d26d3fe59a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TexturedMarkerArray>)))
  "Returns full string definition for message of type '<TexturedMarkerArray>"
  (cl:format cl:nil "TexturedMarker[] markers~%~%================================================================================~%MSG: marti_visualization_msgs/TexturedMarker~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%~%Header              header~%~%string              ns           # Namespace to place this object in... used in~%                                 # conjunction with id to create a unique name~%                                 # for the object.~%~%int32               id~%int32               action       # 0 add/modify an object, 2 deletes an object~%~%duration            lifetime     # How long the object should last before being~%                                 # automatically deleted.  0 means forever~%~%sensor_msgs/Image   image~%geometry_msgs/Pose  pose         # The pose of the image center with respect to~%                                 # the header frame.~%~%float64             resolution   # The pixel scale in meters.~%~%float32             alpha        # The overall alpha transparency to display the~%                                 # marker with.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TexturedMarkerArray)))
  "Returns full string definition for message of type 'TexturedMarkerArray"
  (cl:format cl:nil "TexturedMarker[] markers~%~%================================================================================~%MSG: marti_visualization_msgs/TexturedMarker~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%~%Header              header~%~%string              ns           # Namespace to place this object in... used in~%                                 # conjunction with id to create a unique name~%                                 # for the object.~%~%int32               id~%int32               action       # 0 add/modify an object, 2 deletes an object~%~%duration            lifetime     # How long the object should last before being~%                                 # automatically deleted.  0 means forever~%~%sensor_msgs/Image   image~%geometry_msgs/Pose  pose         # The pose of the image center with respect to~%                                 # the header frame.~%~%float64             resolution   # The pixel scale in meters.~%~%float32             alpha        # The overall alpha transparency to display the~%                                 # marker with.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TexturedMarkerArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TexturedMarkerArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TexturedMarkerArray
    (cl:cons ':markers (markers msg))
))
