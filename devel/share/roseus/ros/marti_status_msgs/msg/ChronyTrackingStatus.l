;; Auto-generated. Do not edit!


(when (boundp 'marti_status_msgs::ChronyTrackingStatus)
  (if (not (find-package "MARTI_STATUS_MSGS"))
    (make-package "MARTI_STATUS_MSGS"))
  (shadow 'ChronyTrackingStatus (find-package "MARTI_STATUS_MSGS")))
(unless (find-package "MARTI_STATUS_MSGS::CHRONYTRACKINGSTATUS")
  (make-package "MARTI_STATUS_MSGS::CHRONYTRACKINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ChronyTrackingStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_status_msgs::ChronyTrackingStatus
  :super ros::object
  :slots (_header _reference _stratum _system_time_offset _last_offset _rms_offset _frequency_offset _residual_frequency _skew _root_delay _root_dispersion _update_interval _leap_status ))

(defmethod marti_status_msgs::ChronyTrackingStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:reference __reference) "")
    ((:stratum __stratum) 0)
    ((:system_time_offset __system_time_offset) 0.0)
    ((:last_offset __last_offset) 0.0)
    ((:rms_offset __rms_offset) 0.0)
    ((:frequency_offset __frequency_offset) 0.0)
    ((:residual_frequency __residual_frequency) 0.0)
    ((:skew __skew) 0.0)
    ((:root_delay __root_delay) 0.0)
    ((:root_dispersion __root_dispersion) 0.0)
    ((:update_interval __update_interval) 0.0)
    ((:leap_status __leap_status) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _reference (string __reference))
   (setq _stratum (round __stratum))
   (setq _system_time_offset (float __system_time_offset))
   (setq _last_offset (float __last_offset))
   (setq _rms_offset (float __rms_offset))
   (setq _frequency_offset (float __frequency_offset))
   (setq _residual_frequency (float __residual_frequency))
   (setq _skew (float __skew))
   (setq _root_delay (float __root_delay))
   (setq _root_dispersion (float __root_dispersion))
   (setq _update_interval (float __update_interval))
   (setq _leap_status (string __leap_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:reference
   (&optional __reference)
   (if __reference (setq _reference __reference)) _reference)
  (:stratum
   (&optional __stratum)
   (if __stratum (setq _stratum __stratum)) _stratum)
  (:system_time_offset
   (&optional __system_time_offset)
   (if __system_time_offset (setq _system_time_offset __system_time_offset)) _system_time_offset)
  (:last_offset
   (&optional __last_offset)
   (if __last_offset (setq _last_offset __last_offset)) _last_offset)
  (:rms_offset
   (&optional __rms_offset)
   (if __rms_offset (setq _rms_offset __rms_offset)) _rms_offset)
  (:frequency_offset
   (&optional __frequency_offset)
   (if __frequency_offset (setq _frequency_offset __frequency_offset)) _frequency_offset)
  (:residual_frequency
   (&optional __residual_frequency)
   (if __residual_frequency (setq _residual_frequency __residual_frequency)) _residual_frequency)
  (:skew
   (&optional __skew)
   (if __skew (setq _skew __skew)) _skew)
  (:root_delay
   (&optional __root_delay)
   (if __root_delay (setq _root_delay __root_delay)) _root_delay)
  (:root_dispersion
   (&optional __root_dispersion)
   (if __root_dispersion (setq _root_dispersion __root_dispersion)) _root_dispersion)
  (:update_interval
   (&optional __update_interval)
   (if __update_interval (setq _update_interval __update_interval)) _update_interval)
  (:leap_status
   (&optional __leap_status)
   (if __leap_status (setq _leap_status __leap_status)) _leap_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _reference
    4 (length _reference)
    ;; int32 _stratum
    4
    ;; float64 _system_time_offset
    8
    ;; float64 _last_offset
    8
    ;; float64 _rms_offset
    8
    ;; float32 _frequency_offset
    4
    ;; float32 _residual_frequency
    4
    ;; float32 _skew
    4
    ;; float64 _root_delay
    8
    ;; float64 _root_dispersion
    8
    ;; float32 _update_interval
    4
    ;; string _leap_status
    4 (length _leap_status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _reference
       (write-long (length _reference) s) (princ _reference s)
     ;; int32 _stratum
       (write-long _stratum s)
     ;; float64 _system_time_offset
       (sys::poke _system_time_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _last_offset
       (sys::poke _last_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rms_offset
       (sys::poke _rms_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _frequency_offset
       (sys::poke _frequency_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _residual_frequency
       (sys::poke _residual_frequency (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _skew
       (sys::poke _skew (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _root_delay
       (sys::poke _root_delay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _root_dispersion
       (sys::poke _root_dispersion (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _update_interval
       (sys::poke _update_interval (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _leap_status
       (write-long (length _leap_status) s) (princ _leap_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _reference
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reference (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _stratum
     (setq _stratum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _system_time_offset
     (setq _system_time_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _last_offset
     (setq _last_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rms_offset
     (setq _rms_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _frequency_offset
     (setq _frequency_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _residual_frequency
     (setq _residual_frequency (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _skew
     (setq _skew (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _root_delay
     (setq _root_delay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _root_dispersion
     (setq _root_dispersion (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _update_interval
     (setq _update_interval (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _leap_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _leap_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get marti_status_msgs::ChronyTrackingStatus :md5sum-) "8d4e25c769e04f542a792f47f82c3ccd")
(setf (get marti_status_msgs::ChronyTrackingStatus :datatype-) "marti_status_msgs/ChronyTrackingStatus")
(setf (get marti_status_msgs::ChronyTrackingStatus :definition-)
      "Header header

string reference
int32 stratum
float64 system_time_offset
float64 last_offset 
float64 rms_offset
float32 frequency_offset
float32 residual_frequency
float32 skew
float64 root_delay
float64 root_dispersion
float32 update_interval

string leap_status

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



(provide :marti_status_msgs/ChronyTrackingStatus "8d4e25c769e04f542a792f47f82c3ccd")


