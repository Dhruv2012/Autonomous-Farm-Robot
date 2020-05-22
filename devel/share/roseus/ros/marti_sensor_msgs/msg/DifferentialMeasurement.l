;; Auto-generated. Do not edit!


(when (boundp 'marti_sensor_msgs::DifferentialMeasurement)
  (if (not (find-package "MARTI_SENSOR_MSGS"))
    (make-package "MARTI_SENSOR_MSGS"))
  (shadow 'DifferentialMeasurement (find-package "MARTI_SENSOR_MSGS")))
(unless (find-package "MARTI_SENSOR_MSGS::DIFFERENTIALMEASUREMENT")
  (make-package "MARTI_SENSOR_MSGS::DIFFERENTIALMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude DifferentialMeasurement.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_sensor_msgs::DifferentialMeasurement
  :super ros::object
  :slots (_header _base_frame_id _baseline_length _baseline_length_variance _heading _heading_variance _pitch _pitch_variance _roll _roll_variance _position _position_covariance ))

(defmethod marti_sensor_msgs::DifferentialMeasurement
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:base_frame_id __base_frame_id) "")
    ((:baseline_length __baseline_length) 0.0)
    ((:baseline_length_variance __baseline_length_variance) 0.0)
    ((:heading __heading) 0.0)
    ((:heading_variance __heading_variance) 0.0)
    ((:pitch __pitch) 0.0)
    ((:pitch_variance __pitch_variance) 0.0)
    ((:roll __roll) 0.0)
    ((:roll_variance __roll_variance) 0.0)
    ((:position __position) (instance geometry_msgs::Vector3 :init))
    ((:position_covariance __position_covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _base_frame_id (string __base_frame_id))
   (setq _baseline_length (float __baseline_length))
   (setq _baseline_length_variance (float __baseline_length_variance))
   (setq _heading (float __heading))
   (setq _heading_variance (float __heading_variance))
   (setq _pitch (float __pitch))
   (setq _pitch_variance (float __pitch_variance))
   (setq _roll (float __roll))
   (setq _roll_variance (float __roll_variance))
   (setq _position __position)
   (setq _position_covariance __position_covariance)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:base_frame_id
   (&optional __base_frame_id)
   (if __base_frame_id (setq _base_frame_id __base_frame_id)) _base_frame_id)
  (:baseline_length
   (&optional __baseline_length)
   (if __baseline_length (setq _baseline_length __baseline_length)) _baseline_length)
  (:baseline_length_variance
   (&optional __baseline_length_variance)
   (if __baseline_length_variance (setq _baseline_length_variance __baseline_length_variance)) _baseline_length_variance)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:heading_variance
   (&optional __heading_variance)
   (if __heading_variance (setq _heading_variance __heading_variance)) _heading_variance)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:pitch_variance
   (&optional __pitch_variance)
   (if __pitch_variance (setq _pitch_variance __pitch_variance)) _pitch_variance)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:roll_variance
   (&optional __roll_variance)
   (if __roll_variance (setq _roll_variance __roll_variance)) _roll_variance)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:position_covariance
   (&optional __position_covariance)
   (if __position_covariance (setq _position_covariance __position_covariance)) _position_covariance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _base_frame_id
    4 (length _base_frame_id)
    ;; float64 _baseline_length
    8
    ;; float64 _baseline_length_variance
    8
    ;; float64 _heading
    8
    ;; float64 _heading_variance
    8
    ;; float64 _pitch
    8
    ;; float64 _pitch_variance
    8
    ;; float64 _roll
    8
    ;; float64 _roll_variance
    8
    ;; geometry_msgs/Vector3 _position
    (send _position :serialization-length)
    ;; float64[9] _position_covariance
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _base_frame_id
       (write-long (length _base_frame_id) s) (princ _base_frame_id s)
     ;; float64 _baseline_length
       (sys::poke _baseline_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _baseline_length_variance
       (sys::poke _baseline_length_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_variance
       (sys::poke _heading_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_variance
       (sys::poke _pitch_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_variance
       (sys::poke _roll_variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _position
       (send _position :serialize s)
     ;; float64[9] _position_covariance
     (dotimes (i 9)
       (sys::poke (elt _position_covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _base_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _baseline_length
     (setq _baseline_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _baseline_length_variance
     (setq _baseline_length_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_variance
     (setq _heading_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_variance
     (setq _pitch_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_variance
     (setq _roll_variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64[9] _position_covariance
   (dotimes (i (length _position_covariance))
     (setf (elt _position_covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get marti_sensor_msgs::DifferentialMeasurement :md5sum-) "4e59a00b1eeea864eec73f05dd359752")
(setf (get marti_sensor_msgs::DifferentialMeasurement :datatype-) "marti_sensor_msgs/DifferentialMeasurement")
(setf (get marti_sensor_msgs::DifferentialMeasurement :definition-)
      "# A differential measurement between two places in the world
#  Usually used with RTK-gps setups

Header  header           # The time and location where this measurement is taken from
string  base_frame_id    # The location we are measuring relative to

float64 baseline_length  # Distance in meters between the two locations
float64 baseline_length_variance # set > 1e14 to mark as invalid
float64 heading          # Heading in degrees of the relative position vector
float64 heading_variance # set > 1e14 to mark as invalid
float64 pitch            # Pitch in degrees of the relative position vector
float64 pitch_variance   # set > 1e14 to mark as invalid
float64 roll             # Roll in degrees of the relative position vector
float64 roll_variance    # set > 1e14 to mark as invalid

geometry_msgs/Vector3 position  # position measurement between this point and our reference location
                                # coordinates are given in ENU meters
float64[9] position_covariance  # Covariance for the position measurement
                       # set > 1e14 to mark as invalid

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :marti_sensor_msgs/DifferentialMeasurement "4e59a00b1eeea864eec73f05dd359752")


