;; Auto-generated. Do not edit!


(when (boundp 'marti_sensor_msgs::Altitude)
  (if (not (find-package "MARTI_SENSOR_MSGS"))
    (make-package "MARTI_SENSOR_MSGS"))
  (shadow 'Altitude (find-package "MARTI_SENSOR_MSGS")))
(unless (find-package "MARTI_SENSOR_MSGS::ALTITUDE")
  (make-package "MARTI_SENSOR_MSGS::ALTITUDE"))

(in-package "ROS")
;;//! \htmlinclude Altitude.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_sensor_msgs::Altitude
  :super ros::object
  :slots (_header _altitude _sigma ))

(defmethod marti_sensor_msgs::Altitude
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:altitude __altitude) 0.0)
    ((:sigma __sigma) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _altitude (float __altitude))
   (setq _sigma (float __sigma))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:sigma
   (&optional __sigma)
   (if __sigma (setq _sigma __sigma)) _sigma)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _altitude
    8
    ;; float64 _sigma
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sigma
       (sys::poke _sigma (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sigma
     (setq _sigma (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get marti_sensor_msgs::Altitude :md5sum-) "c3156c79592b8b17259917f4804f4420")
(setf (get marti_sensor_msgs::Altitude :datatype-) "marti_sensor_msgs/Altitude")
(setf (get marti_sensor_msgs::Altitude :definition-)
      "# Altitude estimate for the origin of the frame specified by header.frame_id
Header               header      
float64						   altitude  # meters above sea level
float64						   sigma     # Uncertainty (standard deviation) of the altitude

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



(provide :marti_sensor_msgs/Altitude "c3156c79592b8b17259917f4804f4420")


