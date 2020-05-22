;; Auto-generated. Do not edit!


(when (boundp 'marti_sensor_msgs::WheelEncoderSet)
  (if (not (find-package "MARTI_SENSOR_MSGS"))
    (make-package "MARTI_SENSOR_MSGS"))
  (shadow 'WheelEncoderSet (find-package "MARTI_SENSOR_MSGS")))
(unless (find-package "MARTI_SENSOR_MSGS::WHEELENCODERSET")
  (make-package "MARTI_SENSOR_MSGS::WHEELENCODERSET"))

(in-package "ROS")
;;//! \htmlinclude WheelEncoderSet.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_sensor_msgs::WheelEncoderSet
  :super ros::object
  :slots (_header _encoders ))

(defmethod marti_sensor_msgs::WheelEncoderSet
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:encoders __encoders) (let (r) (dotimes (i 0) (push (instance marti_sensor_msgs::WheelEncoder :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _encoders __encoders)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:encoders
   (&rest __encoders)
   (if (keywordp (car __encoders))
       (send* _encoders __encoders)
     (progn
       (if __encoders (setq _encoders (car __encoders)))
       _encoders)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; marti_sensor_msgs/WheelEncoder[] _encoders
    (apply #'+ (send-all _encoders :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; marti_sensor_msgs/WheelEncoder[] _encoders
     (write-long (length _encoders) s)
     (dolist (elem _encoders)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; marti_sensor_msgs/WheelEncoder[] _encoders
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _encoders (let (r) (dotimes (i n) (push (instance marti_sensor_msgs::WheelEncoder :init) r)) r))
     (dolist (elem- _encoders)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get marti_sensor_msgs::WheelEncoderSet :md5sum-) "a1169b74ddf14d2e1ad1aa65311182d9")
(setf (get marti_sensor_msgs::WheelEncoderSet :datatype-) "marti_sensor_msgs/WheelEncoderSet")
(setf (get marti_sensor_msgs::WheelEncoderSet :definition-)
      "Header header

WheelEncoder[] encoders
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
MSG: marti_sensor_msgs/WheelEncoder
# Frequency from wheel encoder
#  If directional (below) is True, positive frequency means forward, and
#   negative frequency means backward.
#  If directional is False, frequency is non-negative and has no directional
#   information
float64 frequency

# True if frequency sign is significant; false else
bool directional

# ID of the wheel with which this data is associated
uint8 id
")



(provide :marti_sensor_msgs/WheelEncoderSet "a1169b74ddf14d2e1ad1aa65311182d9")


