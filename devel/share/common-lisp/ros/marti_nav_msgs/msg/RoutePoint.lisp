; Auto-generated. Do not edit!


(cl:in-package marti_nav_msgs-msg)


;//! \htmlinclude RoutePoint.msg.html

(cl:defclass <RoutePoint> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (properties
    :reader properties
    :initarg :properties
    :type (cl:vector marti_common_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'marti_common_msgs-msg:KeyValue :initial-element (cl:make-instance 'marti_common_msgs-msg:KeyValue))))
)

(cl:defclass RoutePoint (<RoutePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RoutePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RoutePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_nav_msgs-msg:<RoutePoint> is deprecated: use marti_nav_msgs-msg:RoutePoint instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <RoutePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:pose-val is deprecated.  Use marti_nav_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RoutePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:id-val is deprecated.  Use marti_nav_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'properties-val :lambda-list '(m))
(cl:defmethod properties-val ((m <RoutePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_nav_msgs-msg:properties-val is deprecated.  Use marti_nav_msgs-msg:properties instead.")
  (properties m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RoutePoint>) ostream)
  "Serializes a message object of type '<RoutePoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'properties))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'properties))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RoutePoint>) istream)
  "Deserializes a message object of type '<RoutePoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'properties) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'properties)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'marti_common_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RoutePoint>)))
  "Returns string type for a message object of type '<RoutePoint>"
  "marti_nav_msgs/RoutePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RoutePoint)))
  "Returns string type for a message object of type 'RoutePoint"
  "marti_nav_msgs/RoutePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RoutePoint>)))
  "Returns md5sum for a message object of type '<RoutePoint>"
  "f1f627df35e7330c4ee0337ac3a4de9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RoutePoint)))
  "Returns md5sum for a message object of type 'RoutePoint"
  "f1f627df35e7330c4ee0337ac3a4de9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RoutePoint>)))
  "Returns full string definition for message of type '<RoutePoint>"
  (cl:format cl:nil "geometry_msgs/Pose           pose~%string                       id         # unique identifier for this point~%marti_common_msgs/KeyValue[] properties~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RoutePoint)))
  "Returns full string definition for message of type 'RoutePoint"
  (cl:format cl:nil "geometry_msgs/Pose           pose~%string                       id         # unique identifier for this point~%marti_common_msgs/KeyValue[] properties~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: marti_common_msgs/KeyValue~%# An arbitrary key-value pair~%~%string key~%string value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RoutePoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'properties) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RoutePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'RoutePoint
    (cl:cons ':pose (pose msg))
    (cl:cons ':id (id msg))
    (cl:cons ':properties (properties msg))
))
