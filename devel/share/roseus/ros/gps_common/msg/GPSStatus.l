;; Auto-generated. Do not edit!


(when (boundp 'gps_common::GPSStatus)
  (if (not (find-package "GPS_COMMON"))
    (make-package "GPS_COMMON"))
  (shadow 'GPSStatus (find-package "GPS_COMMON")))
(unless (find-package "GPS_COMMON::GPSSTATUS")
  (make-package "GPS_COMMON::GPSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude GPSStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STATUS_NO_FIX*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*STATUS_NO_FIX* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*STATUS_NO_FIX* -1)
(intern "*STATUS_FIX*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*STATUS_FIX* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*STATUS_FIX* 0)
(intern "*STATUS_SBAS_FIX*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*STATUS_SBAS_FIX* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*STATUS_SBAS_FIX* 1)
(intern "*STATUS_GBAS_FIX*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*STATUS_GBAS_FIX* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*STATUS_GBAS_FIX* 2)
(intern "*STATUS_DGPS_FIX*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*STATUS_DGPS_FIX* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*STATUS_DGPS_FIX* 18)
(intern "*STATUS_WAAS_FIX*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*STATUS_WAAS_FIX* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*STATUS_WAAS_FIX* 33)
(intern "*SOURCE_NONE*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*SOURCE_NONE* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*SOURCE_NONE* 0)
(intern "*SOURCE_GPS*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*SOURCE_GPS* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*SOURCE_GPS* 1)
(intern "*SOURCE_POINTS*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*SOURCE_POINTS* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*SOURCE_POINTS* 2)
(intern "*SOURCE_DOPPLER*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*SOURCE_DOPPLER* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*SOURCE_DOPPLER* 4)
(intern "*SOURCE_ALTIMETER*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*SOURCE_ALTIMETER* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*SOURCE_ALTIMETER* 8)
(intern "*SOURCE_MAGNETIC*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*SOURCE_MAGNETIC* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*SOURCE_MAGNETIC* 16)
(intern "*SOURCE_GYRO*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*SOURCE_GYRO* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*SOURCE_GYRO* 32)
(intern "*SOURCE_ACCEL*" (find-package "GPS_COMMON::GPSSTATUS"))
(shadow '*SOURCE_ACCEL* (find-package "GPS_COMMON::GPSSTATUS"))
(defconstant gps_common::GPSStatus::*SOURCE_ACCEL* 64)
(defclass gps_common::GPSStatus
  :super ros::object
  :slots (_header _satellites_used _satellite_used_prn _satellites_visible _satellite_visible_prn _satellite_visible_z _satellite_visible_azimuth _satellite_visible_snr _status _motion_source _orientation_source _position_source ))

(defmethod gps_common::GPSStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:satellites_used __satellites_used) 0)
    ((:satellite_used_prn __satellite_used_prn) (make-array 0 :initial-element 0 :element-type :integer))
    ((:satellites_visible __satellites_visible) 0)
    ((:satellite_visible_prn __satellite_visible_prn) (make-array 0 :initial-element 0 :element-type :integer))
    ((:satellite_visible_z __satellite_visible_z) (make-array 0 :initial-element 0 :element-type :integer))
    ((:satellite_visible_azimuth __satellite_visible_azimuth) (make-array 0 :initial-element 0 :element-type :integer))
    ((:satellite_visible_snr __satellite_visible_snr) (make-array 0 :initial-element 0 :element-type :integer))
    ((:status __status) 0)
    ((:motion_source __motion_source) 0)
    ((:orientation_source __orientation_source) 0)
    ((:position_source __position_source) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _satellites_used (round __satellites_used))
   (setq _satellite_used_prn __satellite_used_prn)
   (setq _satellites_visible (round __satellites_visible))
   (setq _satellite_visible_prn __satellite_visible_prn)
   (setq _satellite_visible_z __satellite_visible_z)
   (setq _satellite_visible_azimuth __satellite_visible_azimuth)
   (setq _satellite_visible_snr __satellite_visible_snr)
   (setq _status (round __status))
   (setq _motion_source (round __motion_source))
   (setq _orientation_source (round __orientation_source))
   (setq _position_source (round __position_source))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:satellites_used
   (&optional __satellites_used)
   (if __satellites_used (setq _satellites_used __satellites_used)) _satellites_used)
  (:satellite_used_prn
   (&optional __satellite_used_prn)
   (if __satellite_used_prn (setq _satellite_used_prn __satellite_used_prn)) _satellite_used_prn)
  (:satellites_visible
   (&optional __satellites_visible)
   (if __satellites_visible (setq _satellites_visible __satellites_visible)) _satellites_visible)
  (:satellite_visible_prn
   (&optional __satellite_visible_prn)
   (if __satellite_visible_prn (setq _satellite_visible_prn __satellite_visible_prn)) _satellite_visible_prn)
  (:satellite_visible_z
   (&optional __satellite_visible_z)
   (if __satellite_visible_z (setq _satellite_visible_z __satellite_visible_z)) _satellite_visible_z)
  (:satellite_visible_azimuth
   (&optional __satellite_visible_azimuth)
   (if __satellite_visible_azimuth (setq _satellite_visible_azimuth __satellite_visible_azimuth)) _satellite_visible_azimuth)
  (:satellite_visible_snr
   (&optional __satellite_visible_snr)
   (if __satellite_visible_snr (setq _satellite_visible_snr __satellite_visible_snr)) _satellite_visible_snr)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:motion_source
   (&optional __motion_source)
   (if __motion_source (setq _motion_source __motion_source)) _motion_source)
  (:orientation_source
   (&optional __orientation_source)
   (if __orientation_source (setq _orientation_source __orientation_source)) _orientation_source)
  (:position_source
   (&optional __position_source)
   (if __position_source (setq _position_source __position_source)) _position_source)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _satellites_used
    2
    ;; int32[] _satellite_used_prn
    (* 4    (length _satellite_used_prn)) 4
    ;; uint16 _satellites_visible
    2
    ;; int32[] _satellite_visible_prn
    (* 4    (length _satellite_visible_prn)) 4
    ;; int32[] _satellite_visible_z
    (* 4    (length _satellite_visible_z)) 4
    ;; int32[] _satellite_visible_azimuth
    (* 4    (length _satellite_visible_azimuth)) 4
    ;; int32[] _satellite_visible_snr
    (* 4    (length _satellite_visible_snr)) 4
    ;; int16 _status
    2
    ;; uint16 _motion_source
    2
    ;; uint16 _orientation_source
    2
    ;; uint16 _position_source
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _satellites_used
       (write-word _satellites_used s)
     ;; int32[] _satellite_used_prn
     (write-long (length _satellite_used_prn) s)
     (dotimes (i (length _satellite_used_prn))
       (write-long (elt _satellite_used_prn i) s)
       )
     ;; uint16 _satellites_visible
       (write-word _satellites_visible s)
     ;; int32[] _satellite_visible_prn
     (write-long (length _satellite_visible_prn) s)
     (dotimes (i (length _satellite_visible_prn))
       (write-long (elt _satellite_visible_prn i) s)
       )
     ;; int32[] _satellite_visible_z
     (write-long (length _satellite_visible_z) s)
     (dotimes (i (length _satellite_visible_z))
       (write-long (elt _satellite_visible_z i) s)
       )
     ;; int32[] _satellite_visible_azimuth
     (write-long (length _satellite_visible_azimuth) s)
     (dotimes (i (length _satellite_visible_azimuth))
       (write-long (elt _satellite_visible_azimuth i) s)
       )
     ;; int32[] _satellite_visible_snr
     (write-long (length _satellite_visible_snr) s)
     (dotimes (i (length _satellite_visible_snr))
       (write-long (elt _satellite_visible_snr i) s)
       )
     ;; int16 _status
       (write-word _status s)
     ;; uint16 _motion_source
       (write-word _motion_source s)
     ;; uint16 _orientation_source
       (write-word _orientation_source s)
     ;; uint16 _position_source
       (write-word _position_source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _satellites_used
     (setq _satellites_used (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32[] _satellite_used_prn
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _satellite_used_prn (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _satellite_used_prn i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint16 _satellites_visible
     (setq _satellites_visible (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32[] _satellite_visible_prn
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _satellite_visible_prn (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _satellite_visible_prn i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _satellite_visible_z
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _satellite_visible_z (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _satellite_visible_z i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _satellite_visible_azimuth
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _satellite_visible_azimuth (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _satellite_visible_azimuth i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _satellite_visible_snr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _satellite_visible_snr (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _satellite_visible_snr i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _motion_source
     (setq _motion_source (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _orientation_source
     (setq _orientation_source (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _position_source
     (setq _position_source (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get gps_common::GPSStatus :md5sum-) "313baa8951fdd056c78bf61b1b07d249")
(setf (get gps_common::GPSStatus :datatype-) "gps_common/GPSStatus")
(setf (get gps_common::GPSStatus :definition-)
      "Header header

# Satellites used in solution
uint16 satellites_used # Number of satellites
int32[] satellite_used_prn # PRN identifiers

# Satellites visible
uint16 satellites_visible
int32[] satellite_visible_prn # PRN identifiers
int32[] satellite_visible_z # Elevation of satellites
int32[] satellite_visible_azimuth # Azimuth of satellites
int32[] satellite_visible_snr # Signal-to-noise ratios (dB)

# Measurement status
int16 STATUS_NO_FIX=-1   # Unable to fix position
int16 STATUS_FIX=0       # Normal fix
int16 STATUS_SBAS_FIX=1  # Fixed using a satellite-based augmentation system
int16 STATUS_GBAS_FIX=2  #          or a ground-based augmentation system
int16 STATUS_DGPS_FIX=18 # Fixed with DGPS
int16 STATUS_WAAS_FIX=33 # Fixed with WAAS
int16 status

uint16 SOURCE_NONE=0 # No information is available
uint16 SOURCE_GPS=1 # Using standard GPS location [only valid for position_source]
uint16 SOURCE_POINTS=2 # Motion/orientation fix is derived from successive points
uint16 SOURCE_DOPPLER=4 # Motion is derived using the Doppler effect
uint16 SOURCE_ALTIMETER=8 # Using an altimeter
uint16 SOURCE_MAGNETIC=16 # Using magnetic sensors
uint16 SOURCE_GYRO=32 # Using gyroscopes
uint16 SOURCE_ACCEL=64 # Using accelerometers

uint16 motion_source # Source for speed, climb and track
uint16 orientation_source # Source for device orientation
uint16 position_source # Source for position


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :gps_common/GPSStatus "313baa8951fdd056c78bf61b1b07d249")


