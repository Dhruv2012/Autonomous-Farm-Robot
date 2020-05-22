; Auto-generated. Do not edit!


(cl:in-package gps_common-msg)


;//! \htmlinclude GPSStatus.msg.html

(cl:defclass <GPSStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (satellites_used
    :reader satellites_used
    :initarg :satellites_used
    :type cl:fixnum
    :initform 0)
   (satellite_used_prn
    :reader satellite_used_prn
    :initarg :satellite_used_prn
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (satellites_visible
    :reader satellites_visible
    :initarg :satellites_visible
    :type cl:fixnum
    :initform 0)
   (satellite_visible_prn
    :reader satellite_visible_prn
    :initarg :satellite_visible_prn
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (satellite_visible_z
    :reader satellite_visible_z
    :initarg :satellite_visible_z
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (satellite_visible_azimuth
    :reader satellite_visible_azimuth
    :initarg :satellite_visible_azimuth
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (satellite_visible_snr
    :reader satellite_visible_snr
    :initarg :satellite_visible_snr
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (motion_source
    :reader motion_source
    :initarg :motion_source
    :type cl:fixnum
    :initform 0)
   (orientation_source
    :reader orientation_source
    :initarg :orientation_source
    :type cl:fixnum
    :initform 0)
   (position_source
    :reader position_source
    :initarg :position_source
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GPSStatus (<GPSStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPSStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPSStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gps_common-msg:<GPSStatus> is deprecated: use gps_common-msg:GPSStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:header-val is deprecated.  Use gps_common-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'satellites_used-val :lambda-list '(m))
(cl:defmethod satellites_used-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:satellites_used-val is deprecated.  Use gps_common-msg:satellites_used instead.")
  (satellites_used m))

(cl:ensure-generic-function 'satellite_used_prn-val :lambda-list '(m))
(cl:defmethod satellite_used_prn-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:satellite_used_prn-val is deprecated.  Use gps_common-msg:satellite_used_prn instead.")
  (satellite_used_prn m))

(cl:ensure-generic-function 'satellites_visible-val :lambda-list '(m))
(cl:defmethod satellites_visible-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:satellites_visible-val is deprecated.  Use gps_common-msg:satellites_visible instead.")
  (satellites_visible m))

(cl:ensure-generic-function 'satellite_visible_prn-val :lambda-list '(m))
(cl:defmethod satellite_visible_prn-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:satellite_visible_prn-val is deprecated.  Use gps_common-msg:satellite_visible_prn instead.")
  (satellite_visible_prn m))

(cl:ensure-generic-function 'satellite_visible_z-val :lambda-list '(m))
(cl:defmethod satellite_visible_z-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:satellite_visible_z-val is deprecated.  Use gps_common-msg:satellite_visible_z instead.")
  (satellite_visible_z m))

(cl:ensure-generic-function 'satellite_visible_azimuth-val :lambda-list '(m))
(cl:defmethod satellite_visible_azimuth-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:satellite_visible_azimuth-val is deprecated.  Use gps_common-msg:satellite_visible_azimuth instead.")
  (satellite_visible_azimuth m))

(cl:ensure-generic-function 'satellite_visible_snr-val :lambda-list '(m))
(cl:defmethod satellite_visible_snr-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:satellite_visible_snr-val is deprecated.  Use gps_common-msg:satellite_visible_snr instead.")
  (satellite_visible_snr m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:status-val is deprecated.  Use gps_common-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'motion_source-val :lambda-list '(m))
(cl:defmethod motion_source-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:motion_source-val is deprecated.  Use gps_common-msg:motion_source instead.")
  (motion_source m))

(cl:ensure-generic-function 'orientation_source-val :lambda-list '(m))
(cl:defmethod orientation_source-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:orientation_source-val is deprecated.  Use gps_common-msg:orientation_source instead.")
  (orientation_source m))

(cl:ensure-generic-function 'position_source-val :lambda-list '(m))
(cl:defmethod position_source-val ((m <GPSStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gps_common-msg:position_source-val is deprecated.  Use gps_common-msg:position_source instead.")
  (position_source m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GPSStatus>)))
    "Constants for message type '<GPSStatus>"
  '((:STATUS_NO_FIX . -1)
    (:STATUS_FIX . 0)
    (:STATUS_SBAS_FIX . 1)
    (:STATUS_GBAS_FIX . 2)
    (:STATUS_DGPS_FIX . 18)
    (:STATUS_WAAS_FIX . 33)
    (:SOURCE_NONE . 0)
    (:SOURCE_GPS . 1)
    (:SOURCE_POINTS . 2)
    (:SOURCE_DOPPLER . 4)
    (:SOURCE_ALTIMETER . 8)
    (:SOURCE_MAGNETIC . 16)
    (:SOURCE_GYRO . 32)
    (:SOURCE_ACCEL . 64))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GPSStatus)))
    "Constants for message type 'GPSStatus"
  '((:STATUS_NO_FIX . -1)
    (:STATUS_FIX . 0)
    (:STATUS_SBAS_FIX . 1)
    (:STATUS_GBAS_FIX . 2)
    (:STATUS_DGPS_FIX . 18)
    (:STATUS_WAAS_FIX . 33)
    (:SOURCE_NONE . 0)
    (:SOURCE_GPS . 1)
    (:SOURCE_POINTS . 2)
    (:SOURCE_DOPPLER . 4)
    (:SOURCE_ALTIMETER . 8)
    (:SOURCE_MAGNETIC . 16)
    (:SOURCE_GYRO . 32)
    (:SOURCE_ACCEL . 64))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPSStatus>) ostream)
  "Serializes a message object of type '<GPSStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satellites_used)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'satellites_used)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'satellite_used_prn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'satellite_used_prn))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satellites_visible)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'satellites_visible)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'satellite_visible_prn))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'satellite_visible_prn))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'satellite_visible_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'satellite_visible_z))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'satellite_visible_azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'satellite_visible_azimuth))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'satellite_visible_snr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'satellite_visible_snr))
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motion_source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation_source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'orientation_source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_source)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_source)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPSStatus>) istream)
  "Deserializes a message object of type '<GPSStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satellites_used)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'satellites_used)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'satellite_used_prn) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'satellite_used_prn)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'satellites_visible)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'satellites_visible)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'satellite_visible_prn) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'satellite_visible_prn)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'satellite_visible_z) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'satellite_visible_z)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'satellite_visible_azimuth) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'satellite_visible_azimuth)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'satellite_visible_snr) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'satellite_visible_snr)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motion_source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motion_source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'orientation_source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'orientation_source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_source)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position_source)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPSStatus>)))
  "Returns string type for a message object of type '<GPSStatus>"
  "gps_common/GPSStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPSStatus)))
  "Returns string type for a message object of type 'GPSStatus"
  "gps_common/GPSStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPSStatus>)))
  "Returns md5sum for a message object of type '<GPSStatus>"
  "313baa8951fdd056c78bf61b1b07d249")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPSStatus)))
  "Returns md5sum for a message object of type 'GPSStatus"
  "313baa8951fdd056c78bf61b1b07d249")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPSStatus>)))
  "Returns full string definition for message of type '<GPSStatus>"
  (cl:format cl:nil "Header header~%~%# Satellites used in solution~%uint16 satellites_used # Number of satellites~%int32[] satellite_used_prn # PRN identifiers~%~%# Satellites visible~%uint16 satellites_visible~%int32[] satellite_visible_prn # PRN identifiers~%int32[] satellite_visible_z # Elevation of satellites~%int32[] satellite_visible_azimuth # Azimuth of satellites~%int32[] satellite_visible_snr # Signal-to-noise ratios (dB)~%~%# Measurement status~%int16 STATUS_NO_FIX=-1   # Unable to fix position~%int16 STATUS_FIX=0       # Normal fix~%int16 STATUS_SBAS_FIX=1  # Fixed using a satellite-based augmentation system~%int16 STATUS_GBAS_FIX=2  #          or a ground-based augmentation system~%int16 STATUS_DGPS_FIX=18 # Fixed with DGPS~%int16 STATUS_WAAS_FIX=33 # Fixed with WAAS~%int16 status~%~%uint16 SOURCE_NONE=0 # No information is available~%uint16 SOURCE_GPS=1 # Using standard GPS location [only valid for position_source]~%uint16 SOURCE_POINTS=2 # Motion/orientation fix is derived from successive points~%uint16 SOURCE_DOPPLER=4 # Motion is derived using the Doppler effect~%uint16 SOURCE_ALTIMETER=8 # Using an altimeter~%uint16 SOURCE_MAGNETIC=16 # Using magnetic sensors~%uint16 SOURCE_GYRO=32 # Using gyroscopes~%uint16 SOURCE_ACCEL=64 # Using accelerometers~%~%uint16 motion_source # Source for speed, climb and track~%uint16 orientation_source # Source for device orientation~%uint16 position_source # Source for position~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPSStatus)))
  "Returns full string definition for message of type 'GPSStatus"
  (cl:format cl:nil "Header header~%~%# Satellites used in solution~%uint16 satellites_used # Number of satellites~%int32[] satellite_used_prn # PRN identifiers~%~%# Satellites visible~%uint16 satellites_visible~%int32[] satellite_visible_prn # PRN identifiers~%int32[] satellite_visible_z # Elevation of satellites~%int32[] satellite_visible_azimuth # Azimuth of satellites~%int32[] satellite_visible_snr # Signal-to-noise ratios (dB)~%~%# Measurement status~%int16 STATUS_NO_FIX=-1   # Unable to fix position~%int16 STATUS_FIX=0       # Normal fix~%int16 STATUS_SBAS_FIX=1  # Fixed using a satellite-based augmentation system~%int16 STATUS_GBAS_FIX=2  #          or a ground-based augmentation system~%int16 STATUS_DGPS_FIX=18 # Fixed with DGPS~%int16 STATUS_WAAS_FIX=33 # Fixed with WAAS~%int16 status~%~%uint16 SOURCE_NONE=0 # No information is available~%uint16 SOURCE_GPS=1 # Using standard GPS location [only valid for position_source]~%uint16 SOURCE_POINTS=2 # Motion/orientation fix is derived from successive points~%uint16 SOURCE_DOPPLER=4 # Motion is derived using the Doppler effect~%uint16 SOURCE_ALTIMETER=8 # Using an altimeter~%uint16 SOURCE_MAGNETIC=16 # Using magnetic sensors~%uint16 SOURCE_GYRO=32 # Using gyroscopes~%uint16 SOURCE_ACCEL=64 # Using accelerometers~%~%uint16 motion_source # Source for speed, climb and track~%uint16 orientation_source # Source for device orientation~%uint16 position_source # Source for position~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPSStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'satellite_used_prn) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'satellite_visible_prn) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'satellite_visible_z) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'satellite_visible_azimuth) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'satellite_visible_snr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPSStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GPSStatus
    (cl:cons ':header (header msg))
    (cl:cons ':satellites_used (satellites_used msg))
    (cl:cons ':satellite_used_prn (satellite_used_prn msg))
    (cl:cons ':satellites_visible (satellites_visible msg))
    (cl:cons ':satellite_visible_prn (satellite_visible_prn msg))
    (cl:cons ':satellite_visible_z (satellite_visible_z msg))
    (cl:cons ':satellite_visible_azimuth (satellite_visible_azimuth msg))
    (cl:cons ':satellite_visible_snr (satellite_visible_snr msg))
    (cl:cons ':status (status msg))
    (cl:cons ':motion_source (motion_source msg))
    (cl:cons ':orientation_source (orientation_source msg))
    (cl:cons ':position_source (position_source msg))
))
