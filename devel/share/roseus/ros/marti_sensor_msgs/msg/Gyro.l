;; Auto-generated. Do not edit!


(when (boundp 'marti_sensor_msgs::Gyro)
  (if (not (find-package "MARTI_SENSOR_MSGS"))
    (make-package "MARTI_SENSOR_MSGS"))
  (shadow 'Gyro (find-package "MARTI_SENSOR_MSGS")))
(unless (find-package "MARTI_SENSOR_MSGS::GYRO")
  (make-package "MARTI_SENSOR_MSGS::GYRO"))

(in-package "ROS")
;;//! \htmlinclude Gyro.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_sensor_msgs::Gyro
  :super ros::object
  :slots (_header _angular_rate _variance ))

(defmethod marti_sensor_msgs::Gyro
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angular_rate __angular_rate) 0.0)
    ((:variance __variance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _angular_rate (float __angular_rate))
   (setq _variance (float __variance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angular_rate
   (&optional __angular_rate)
   (if __angular_rate (setq _angular_rate __angular_rate)) _angular_rate)
  (:variance
   (&optional __variance)
   (if __variance (setq _variance __variance)) _variance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _angular_rate
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
     ;; float64 _angular_rate
       (sys::poke _angular_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _variance
       (sys::poke _variance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _angular_rate
     (setq _angular_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _variance
     (setq _variance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get marti_sensor_msgs::Gyro :md5sum-) "f2ad455b27f86b992b2cad5af4af11ba")
(setf (get marti_sensor_msgs::Gyro :datatype-) "marti_sensor_msgs/Gyro")
(setf (get marti_sensor_msgs::Gyro :definition-)
      "# Single axis gyro reading.

Header  header           # The time and location of the measurement.
                         # The x-axis in the sensor space is interpreted as the
                         # axis of rotation.
                         
float64 angular_rate     # Angular rate measurement in radians / sec
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



(provide :marti_sensor_msgs/Gyro "f2ad455b27f86b992b2cad5af4af11ba")


