;; Auto-generated. Do not edit!


(when (boundp 'gps_common::GPSFix)
  (if (not (find-package "GPS_COMMON"))
    (make-package "GPS_COMMON"))
  (shadow 'GPSFix (find-package "GPS_COMMON")))
(unless (find-package "GPS_COMMON::GPSFIX")
  (make-package "GPS_COMMON::GPSFIX"))

(in-package "ROS")
;;//! \htmlinclude GPSFix.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*COVARIANCE_TYPE_UNKNOWN*" (find-package "GPS_COMMON::GPSFIX"))
(shadow '*COVARIANCE_TYPE_UNKNOWN* (find-package "GPS_COMMON::GPSFIX"))
(defconstant gps_common::GPSFix::*COVARIANCE_TYPE_UNKNOWN* 0)
(intern "*COVARIANCE_TYPE_APPROXIMATED*" (find-package "GPS_COMMON::GPSFIX"))
(shadow '*COVARIANCE_TYPE_APPROXIMATED* (find-package "GPS_COMMON::GPSFIX"))
(defconstant gps_common::GPSFix::*COVARIANCE_TYPE_APPROXIMATED* 1)
(intern "*COVARIANCE_TYPE_DIAGONAL_KNOWN*" (find-package "GPS_COMMON::GPSFIX"))
(shadow '*COVARIANCE_TYPE_DIAGONAL_KNOWN* (find-package "GPS_COMMON::GPSFIX"))
(defconstant gps_common::GPSFix::*COVARIANCE_TYPE_DIAGONAL_KNOWN* 2)
(intern "*COVARIANCE_TYPE_KNOWN*" (find-package "GPS_COMMON::GPSFIX"))
(shadow '*COVARIANCE_TYPE_KNOWN* (find-package "GPS_COMMON::GPSFIX"))
(defconstant gps_common::GPSFix::*COVARIANCE_TYPE_KNOWN* 3)
(defclass gps_common::GPSFix
  :super ros::object
  :slots (_header _status _latitude _longitude _altitude _track _speed _climb _pitch _roll _dip _time _gdop _pdop _hdop _vdop _tdop _err _err_horz _err_vert _err_track _err_speed _err_climb _err_time _err_pitch _err_roll _err_dip _position_covariance _position_covariance_type ))

(defmethod gps_common::GPSFix
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (instance gps_common::GPSStatus :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:track __track) 0.0)
    ((:speed __speed) 0.0)
    ((:climb __climb) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:dip __dip) 0.0)
    ((:time __time) 0.0)
    ((:gdop __gdop) 0.0)
    ((:pdop __pdop) 0.0)
    ((:hdop __hdop) 0.0)
    ((:vdop __vdop) 0.0)
    ((:tdop __tdop) 0.0)
    ((:err __err) 0.0)
    ((:err_horz __err_horz) 0.0)
    ((:err_vert __err_vert) 0.0)
    ((:err_track __err_track) 0.0)
    ((:err_speed __err_speed) 0.0)
    ((:err_climb __err_climb) 0.0)
    ((:err_time __err_time) 0.0)
    ((:err_pitch __err_pitch) 0.0)
    ((:err_roll __err_roll) 0.0)
    ((:err_dip __err_dip) 0.0)
    ((:position_covariance __position_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:position_covariance_type __position_covariance_type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status __status)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _track (float __track))
   (setq _speed (float __speed))
   (setq _climb (float __climb))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _dip (float __dip))
   (setq _time (float __time))
   (setq _gdop (float __gdop))
   (setq _pdop (float __pdop))
   (setq _hdop (float __hdop))
   (setq _vdop (float __vdop))
   (setq _tdop (float __tdop))
   (setq _err (float __err))
   (setq _err_horz (float __err_horz))
   (setq _err_vert (float __err_vert))
   (setq _err_track (float __err_track))
   (setq _err_speed (float __err_speed))
   (setq _err_climb (float __err_climb))
   (setq _err_time (float __err_time))
   (setq _err_pitch (float __err_pitch))
   (setq _err_roll (float __err_roll))
   (setq _err_dip (float __err_dip))
   (setq _position_covariance __position_covariance)
   (setq _position_covariance_type (round __position_covariance_type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:track
   (&optional __track)
   (if __track (setq _track __track)) _track)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:climb
   (&optional __climb)
   (if __climb (setq _climb __climb)) _climb)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:dip
   (&optional __dip)
   (if __dip (setq _dip __dip)) _dip)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:gdop
   (&optional __gdop)
   (if __gdop (setq _gdop __gdop)) _gdop)
  (:pdop
   (&optional __pdop)
   (if __pdop (setq _pdop __pdop)) _pdop)
  (:hdop
   (&optional __hdop)
   (if __hdop (setq _hdop __hdop)) _hdop)
  (:vdop
   (&optional __vdop)
   (if __vdop (setq _vdop __vdop)) _vdop)
  (:tdop
   (&optional __tdop)
   (if __tdop (setq _tdop __tdop)) _tdop)
  (:err
   (&optional __err)
   (if __err (setq _err __err)) _err)
  (:err_horz
   (&optional __err_horz)
   (if __err_horz (setq _err_horz __err_horz)) _err_horz)
  (:err_vert
   (&optional __err_vert)
   (if __err_vert (setq _err_vert __err_vert)) _err_vert)
  (:err_track
   (&optional __err_track)
   (if __err_track (setq _err_track __err_track)) _err_track)
  (:err_speed
   (&optional __err_speed)
   (if __err_speed (setq _err_speed __err_speed)) _err_speed)
  (:err_climb
   (&optional __err_climb)
   (if __err_climb (setq _err_climb __err_climb)) _err_climb)
  (:err_time
   (&optional __err_time)
   (if __err_time (setq _err_time __err_time)) _err_time)
  (:err_pitch
   (&optional __err_pitch)
   (if __err_pitch (setq _err_pitch __err_pitch)) _err_pitch)
  (:err_roll
   (&optional __err_roll)
   (if __err_roll (setq _err_roll __err_roll)) _err_roll)
  (:err_dip
   (&optional __err_dip)
   (if __err_dip (setq _err_dip __err_dip)) _err_dip)
  (:position_covariance
   (&optional __position_covariance)
   (if __position_covariance (setq _position_covariance __position_covariance)) _position_covariance)
  (:position_covariance_type
   (&optional __position_covariance_type)
   (if __position_covariance_type (setq _position_covariance_type __position_covariance_type)) _position_covariance_type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; gps_common/GPSStatus _status
    (send _status :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _track
    8
    ;; float64 _speed
    8
    ;; float64 _climb
    8
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ;; float64 _dip
    8
    ;; float64 _time
    8
    ;; float64 _gdop
    8
    ;; float64 _pdop
    8
    ;; float64 _hdop
    8
    ;; float64 _vdop
    8
    ;; float64 _tdop
    8
    ;; float64 _err
    8
    ;; float64 _err_horz
    8
    ;; float64 _err_vert
    8
    ;; float64 _err_track
    8
    ;; float64 _err_speed
    8
    ;; float64 _err_climb
    8
    ;; float64 _err_time
    8
    ;; float64 _err_pitch
    8
    ;; float64 _err_roll
    8
    ;; float64 _err_dip
    8
    ;; float64[9] _position_covariance
    (* 8    9)
    ;; uint8 _position_covariance_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; gps_common/GPSStatus _status
       (send _status :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _track
       (sys::poke _track (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _climb
       (sys::poke _climb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dip
       (sys::poke _dip (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gdop
       (sys::poke _gdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pdop
       (sys::poke _pdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hdop
       (sys::poke _hdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vdop
       (sys::poke _vdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tdop
       (sys::poke _tdop (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err
       (sys::poke _err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_horz
       (sys::poke _err_horz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_vert
       (sys::poke _err_vert (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_track
       (sys::poke _err_track (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_speed
       (sys::poke _err_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_climb
       (sys::poke _err_climb (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_time
       (sys::poke _err_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_pitch
       (sys::poke _err_pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_roll
       (sys::poke _err_roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _err_dip
       (sys::poke _err_dip (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[9] _position_covariance
     (dotimes (i 9)
       (sys::poke (elt _position_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8 _position_covariance_type
       (write-byte _position_covariance_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; gps_common/GPSStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _track
     (setq _track (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _climb
     (setq _climb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dip
     (setq _dip (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gdop
     (setq _gdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pdop
     (setq _pdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hdop
     (setq _hdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vdop
     (setq _vdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tdop
     (setq _tdop (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err
     (setq _err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_horz
     (setq _err_horz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_vert
     (setq _err_vert (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_track
     (setq _err_track (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_speed
     (setq _err_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_climb
     (setq _err_climb (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_time
     (setq _err_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_pitch
     (setq _err_pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_roll
     (setq _err_roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _err_dip
     (setq _err_dip (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[9] _position_covariance
   (dotimes (i (length _position_covariance))
     (setf (elt _position_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint8 _position_covariance_type
     (setq _position_covariance_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get gps_common::GPSFix :md5sum-) "3db3d0a7bc53054c67c528af84710b70")
(setf (get gps_common::GPSFix :datatype-) "gps_common/GPSFix")
(setf (get gps_common::GPSFix :definition-)
      "# A more complete GPS fix to supplement sensor_msgs/NavSatFix.
Header header

GPSStatus status

# Latitude (degrees). Positive is north of equator; negative is south.
float64 latitude

# Longitude (degrees). Positive is east of prime meridian, negative west.
float64 longitude

# Altitude (meters). Positive is above reference (e.g., sea level).
float64 altitude

# Direction (degrees from north)
float64 track

# Ground speed (meters/second)
float64 speed

# Vertical speed (meters/second)
float64 climb

# Device orientation (units in degrees)
float64 pitch
float64 roll
float64 dip

# GPS time
float64 time

## Dilution of precision; Xdop<=0 means the value is unknown

# Total (positional-temporal) dilution of precision
float64 gdop

# Positional (3D) dilution of precision
float64 pdop

# Horizontal dilution of precision
float64 hdop

# Vertical dilution of precision
float64 vdop

# Temporal dilution of precision
float64 tdop

## Uncertainty of measurement, 95% confidence

# Spherical position uncertainty (meters) [epe]
float64 err

# Horizontal position uncertainty (meters) [eph]
float64 err_horz

# Vertical position uncertainty (meters) [epv]
float64 err_vert

# Track uncertainty (degrees) [epd]
float64 err_track

# Ground speed uncertainty (meters/second) [eps]
float64 err_speed

# Vertical speed uncertainty (meters/second) [epc]
float64 err_climb

# Temporal uncertainty [ept]
float64 err_time

# Orientation uncertainty (degrees)
float64 err_pitch
float64 err_roll
float64 err_dip

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.

float64[9] position_covariance

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3

uint8 position_covariance_type


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

================================================================================
MSG: gps_common/GPSStatus
Header header

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


")



(provide :gps_common/GPSFix "3db3d0a7bc53054c67c528af84710b70")


