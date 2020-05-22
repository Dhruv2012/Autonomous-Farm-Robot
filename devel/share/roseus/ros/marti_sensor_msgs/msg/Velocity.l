;; Auto-generated. Do not edit!


(when (boundp 'marti_sensor_msgs::Velocity)
  (if (not (find-package "MARTI_SENSOR_MSGS"))
    (make-package "MARTI_SENSOR_MSGS"))
  (shadow 'Velocity (find-package "MARTI_SENSOR_MSGS")))
(unless (find-package "MARTI_SENSOR_MSGS::VELOCITY")
  (make-package "MARTI_SENSOR_MSGS::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude Velocity.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_sensor_msgs::Velocity
  :super ros::object
  :slots (_header _velocity _variance ))

(defmethod marti_sensor_msgs::Velocity
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity __velocity) 0.0)
    ((:variance __variance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity (float __velocity))
   (setq _variance (float __variance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:variance
   (&optional __variance)
   (if __variance (setq _variance __variance)) _variance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _velocity
    8
    ;; float64 _variance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _variance
       (sys::poke _variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _variance
     (setq _variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get marti_sensor_msgs::Velocity :md5sum-) "d9f90fa9bf91df1f2554f047ca0b59f2")
(setf (get marti_sensor_msgs::Velocity :datatype-) "marti_sensor_msgs/Velocity")
(setf (get marti_sensor_msgs::Velocity :definition-)
      "# Single axis linear velocity reading.

Header  header           # The time and location of the measurement.
                         # The x-axis in the sensor space is interpreted as the
                         # axis of linear motion.
                         
float64 velocity         # Velocity measurement in meters / sec
float64 variance         # 0 is interpreted as variance unknown

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



(provide :marti_sensor_msgs/Velocity "d9f90fa9bf91df1f2554f047ca0b59f2")


