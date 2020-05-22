; Auto-generated. Do not edit!


(cl:in-package marti_sensor_msgs-msg)


;//! \htmlinclude DioRealTimeData.msg.html

(cl:defclass <DioRealTimeData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sample_frequency
    :reader sample_frequency
    :initarg :sample_frequency
    :type cl:float
    :initform 0.0)
   (latest_sample_time
    :reader latest_sample_time
    :initarg :latest_sample_time
    :type cl:integer
    :initform 0)
   (sample_states
    :reader sample_states
    :initarg :sample_states
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (sample_times
    :reader sample_times
    :initarg :sample_times
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass DioRealTimeData (<DioRealTimeData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DioRealTimeData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DioRealTimeData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_sensor_msgs-msg:<DioRealTimeData> is deprecated: use marti_sensor_msgs-msg:DioRealTimeData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DioRealTimeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:header-val is deprecated.  Use marti_sensor_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sample_frequency-val :lambda-list '(m))
(cl:defmethod sample_frequency-val ((m <DioRealTimeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:sample_frequency-val is deprecated.  Use marti_sensor_msgs-msg:sample_frequency instead.")
  (sample_frequency m))

(cl:ensure-generic-function 'latest_sample_time-val :lambda-list '(m))
(cl:defmethod latest_sample_time-val ((m <DioRealTimeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:latest_sample_time-val is deprecated.  Use marti_sensor_msgs-msg:latest_sample_time instead.")
  (latest_sample_time m))

(cl:ensure-generic-function 'sample_states-val :lambda-list '(m))
(cl:defmethod sample_states-val ((m <DioRealTimeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:sample_states-val is deprecated.  Use marti_sensor_msgs-msg:sample_states instead.")
  (sample_states m))

(cl:ensure-generic-function 'sample_times-val :lambda-list '(m))
(cl:defmethod sample_times-val ((m <DioRealTimeData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_sensor_msgs-msg:sample_times-val is deprecated.  Use marti_sensor_msgs-msg:sample_times instead.")
  (sample_times m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DioRealTimeData>) ostream)
  "Serializes a message object of type '<DioRealTimeData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sample_frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latest_sample_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'latest_sample_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'latest_sample_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'latest_sample_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'latest_sample_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'latest_sample_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'latest_sample_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'latest_sample_time)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sample_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'sample_states))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sample_times))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'sample_times))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DioRealTimeData>) istream)
  "Deserializes a message object of type '<DioRealTimeData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sample_frequency) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latest_sample_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'latest_sample_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'latest_sample_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'latest_sample_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'latest_sample_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'latest_sample_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'latest_sample_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'latest_sample_time)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sample_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sample_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sample_times) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sample_times)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DioRealTimeData>)))
  "Returns string type for a message object of type '<DioRealTimeData>"
  "marti_sensor_msgs/DioRealTimeData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DioRealTimeData)))
  "Returns string type for a message object of type 'DioRealTimeData"
  "marti_sensor_msgs/DioRealTimeData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DioRealTimeData>)))
  "Returns md5sum for a message object of type '<DioRealTimeData>"
  "98eef69989f7d8b60307368e8e339ff4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DioRealTimeData)))
  "Returns md5sum for a message object of type 'DioRealTimeData"
  "98eef69989f7d8b60307368e8e339ff4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DioRealTimeData>)))
  "Returns full string definition for message of type '<DioRealTimeData>"
  (cl:format cl:nil "# Message for containing digital data obtained by a real-time DAQ.~%~%Header header~%# header contains the timestamp of when this data was obtained from~%# the device.~%~%float64 sample_frequency~%# The sampling frequency [Hz] of the DAQ.~%~%uint64 latest_sample_time~%# The most recent time (in sampling clock ticks) that the port was~%# sampled.~%~%uint16[] sample_states~%uint32[] sample_times~%# DAQ data filtered to only contain changes in states.  sample_times[]~%# is a list of clock ticks encoded as a (negative) offset from~%# latest_sample_time (ex: clock_time[i] = latest_sample_time -~%# sample_times[i]).  This encoding reduces the times from uint64 to~%# uint32.  sample_states[] are the port states at the corresponding~%# times.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DioRealTimeData)))
  "Returns full string definition for message of type 'DioRealTimeData"
  (cl:format cl:nil "# Message for containing digital data obtained by a real-time DAQ.~%~%Header header~%# header contains the timestamp of when this data was obtained from~%# the device.~%~%float64 sample_frequency~%# The sampling frequency [Hz] of the DAQ.~%~%uint64 latest_sample_time~%# The most recent time (in sampling clock ticks) that the port was~%# sampled.~%~%uint16[] sample_states~%uint32[] sample_times~%# DAQ data filtered to only contain changes in states.  sample_times[]~%# is a list of clock ticks encoded as a (negative) offset from~%# latest_sample_time (ex: clock_time[i] = latest_sample_time -~%# sample_times[i]).  This encoding reduces the times from uint64 to~%# uint32.  sample_states[] are the port states at the corresponding~%# times.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DioRealTimeData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sample_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sample_times) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DioRealTimeData>))
  "Converts a ROS message object to a list"
  (cl:list 'DioRealTimeData
    (cl:cons ':header (header msg))
    (cl:cons ':sample_frequency (sample_frequency msg))
    (cl:cons ':latest_sample_time (latest_sample_time msg))
    (cl:cons ':sample_states (sample_states msg))
    (cl:cons ':sample_times (sample_times msg))
))
