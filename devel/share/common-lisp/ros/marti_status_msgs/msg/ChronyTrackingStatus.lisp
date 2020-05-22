; Auto-generated. Do not edit!


(cl:in-package marti_status_msgs-msg)


;//! \htmlinclude ChronyTrackingStatus.msg.html

(cl:defclass <ChronyTrackingStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (reference
    :reader reference
    :initarg :reference
    :type cl:string
    :initform "")
   (stratum
    :reader stratum
    :initarg :stratum
    :type cl:integer
    :initform 0)
   (system_time_offset
    :reader system_time_offset
    :initarg :system_time_offset
    :type cl:float
    :initform 0.0)
   (last_offset
    :reader last_offset
    :initarg :last_offset
    :type cl:float
    :initform 0.0)
   (rms_offset
    :reader rms_offset
    :initarg :rms_offset
    :type cl:float
    :initform 0.0)
   (frequency_offset
    :reader frequency_offset
    :initarg :frequency_offset
    :type cl:float
    :initform 0.0)
   (residual_frequency
    :reader residual_frequency
    :initarg :residual_frequency
    :type cl:float
    :initform 0.0)
   (skew
    :reader skew
    :initarg :skew
    :type cl:float
    :initform 0.0)
   (root_delay
    :reader root_delay
    :initarg :root_delay
    :type cl:float
    :initform 0.0)
   (root_dispersion
    :reader root_dispersion
    :initarg :root_dispersion
    :type cl:float
    :initform 0.0)
   (update_interval
    :reader update_interval
    :initarg :update_interval
    :type cl:float
    :initform 0.0)
   (leap_status
    :reader leap_status
    :initarg :leap_status
    :type cl:string
    :initform ""))
)

(cl:defclass ChronyTrackingStatus (<ChronyTrackingStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChronyTrackingStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChronyTrackingStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name marti_status_msgs-msg:<ChronyTrackingStatus> is deprecated: use marti_status_msgs-msg:ChronyTrackingStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:header-val is deprecated.  Use marti_status_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'reference-val :lambda-list '(m))
(cl:defmethod reference-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:reference-val is deprecated.  Use marti_status_msgs-msg:reference instead.")
  (reference m))

(cl:ensure-generic-function 'stratum-val :lambda-list '(m))
(cl:defmethod stratum-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:stratum-val is deprecated.  Use marti_status_msgs-msg:stratum instead.")
  (stratum m))

(cl:ensure-generic-function 'system_time_offset-val :lambda-list '(m))
(cl:defmethod system_time_offset-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:system_time_offset-val is deprecated.  Use marti_status_msgs-msg:system_time_offset instead.")
  (system_time_offset m))

(cl:ensure-generic-function 'last_offset-val :lambda-list '(m))
(cl:defmethod last_offset-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:last_offset-val is deprecated.  Use marti_status_msgs-msg:last_offset instead.")
  (last_offset m))

(cl:ensure-generic-function 'rms_offset-val :lambda-list '(m))
(cl:defmethod rms_offset-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:rms_offset-val is deprecated.  Use marti_status_msgs-msg:rms_offset instead.")
  (rms_offset m))

(cl:ensure-generic-function 'frequency_offset-val :lambda-list '(m))
(cl:defmethod frequency_offset-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:frequency_offset-val is deprecated.  Use marti_status_msgs-msg:frequency_offset instead.")
  (frequency_offset m))

(cl:ensure-generic-function 'residual_frequency-val :lambda-list '(m))
(cl:defmethod residual_frequency-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:residual_frequency-val is deprecated.  Use marti_status_msgs-msg:residual_frequency instead.")
  (residual_frequency m))

(cl:ensure-generic-function 'skew-val :lambda-list '(m))
(cl:defmethod skew-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:skew-val is deprecated.  Use marti_status_msgs-msg:skew instead.")
  (skew m))

(cl:ensure-generic-function 'root_delay-val :lambda-list '(m))
(cl:defmethod root_delay-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:root_delay-val is deprecated.  Use marti_status_msgs-msg:root_delay instead.")
  (root_delay m))

(cl:ensure-generic-function 'root_dispersion-val :lambda-list '(m))
(cl:defmethod root_dispersion-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:root_dispersion-val is deprecated.  Use marti_status_msgs-msg:root_dispersion instead.")
  (root_dispersion m))

(cl:ensure-generic-function 'update_interval-val :lambda-list '(m))
(cl:defmethod update_interval-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:update_interval-val is deprecated.  Use marti_status_msgs-msg:update_interval instead.")
  (update_interval m))

(cl:ensure-generic-function 'leap_status-val :lambda-list '(m))
(cl:defmethod leap_status-val ((m <ChronyTrackingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader marti_status_msgs-msg:leap_status-val is deprecated.  Use marti_status_msgs-msg:leap_status instead.")
  (leap_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChronyTrackingStatus>) ostream)
  "Serializes a message object of type '<ChronyTrackingStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reference))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reference))
  (cl:let* ((signed (cl:slot-value msg 'stratum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'system_time_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'last_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rms_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frequency_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'residual_frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'skew))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'root_delay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'root_dispersion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'update_interval))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'leap_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'leap_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChronyTrackingStatus>) istream)
  "Deserializes a message object of type '<ChronyTrackingStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reference) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reference) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stratum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'system_time_offset) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_offset) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rms_offset) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frequency_offset) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'residual_frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'skew) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'root_delay) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'root_dispersion) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'update_interval) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leap_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'leap_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChronyTrackingStatus>)))
  "Returns string type for a message object of type '<ChronyTrackingStatus>"
  "marti_status_msgs/ChronyTrackingStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChronyTrackingStatus)))
  "Returns string type for a message object of type 'ChronyTrackingStatus"
  "marti_status_msgs/ChronyTrackingStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChronyTrackingStatus>)))
  "Returns md5sum for a message object of type '<ChronyTrackingStatus>"
  "8d4e25c769e04f542a792f47f82c3ccd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChronyTrackingStatus)))
  "Returns md5sum for a message object of type 'ChronyTrackingStatus"
  "8d4e25c769e04f542a792f47f82c3ccd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChronyTrackingStatus>)))
  "Returns full string definition for message of type '<ChronyTrackingStatus>"
  (cl:format cl:nil "Header header~%~%string reference~%int32 stratum~%float64 system_time_offset~%float64 last_offset ~%float64 rms_offset~%float32 frequency_offset~%float32 residual_frequency~%float32 skew~%float64 root_delay~%float64 root_dispersion~%float32 update_interval~%~%string leap_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChronyTrackingStatus)))
  "Returns full string definition for message of type 'ChronyTrackingStatus"
  (cl:format cl:nil "Header header~%~%string reference~%int32 stratum~%float64 system_time_offset~%float64 last_offset ~%float64 rms_offset~%float32 frequency_offset~%float32 residual_frequency~%float32 skew~%float64 root_delay~%float64 root_dispersion~%float32 update_interval~%~%string leap_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChronyTrackingStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'reference))
     4
     8
     8
     8
     4
     4
     4
     8
     8
     4
     4 (cl:length (cl:slot-value msg 'leap_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChronyTrackingStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ChronyTrackingStatus
    (cl:cons ':header (header msg))
    (cl:cons ':reference (reference msg))
    (cl:cons ':stratum (stratum msg))
    (cl:cons ':system_time_offset (system_time_offset msg))
    (cl:cons ':last_offset (last_offset msg))
    (cl:cons ':rms_offset (rms_offset msg))
    (cl:cons ':frequency_offset (frequency_offset msg))
    (cl:cons ':residual_frequency (residual_frequency msg))
    (cl:cons ':skew (skew msg))
    (cl:cons ':root_delay (root_delay msg))
    (cl:cons ':root_dispersion (root_dispersion msg))
    (cl:cons ':update_interval (update_interval msg))
    (cl:cons ':leap_status (leap_status msg))
))
