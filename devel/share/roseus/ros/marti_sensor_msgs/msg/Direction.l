;; Auto-generated. Do not edit!


(when (boundp 'marti_sensor_msgs::Direction)
  (if (not (find-package "MARTI_SENSOR_MSGS"))
    (make-package "MARTI_SENSOR_MSGS"))
  (shadow 'Direction (find-package "MARTI_SENSOR_MSGS")))
(unless (find-package "MARTI_SENSOR_MSGS::DIRECTION")
  (make-package "MARTI_SENSOR_MSGS::DIRECTION"))

(in-package "ROS")
;;//! \htmlinclude Direction.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*BACKWARD*" (find-package "MARTI_SENSOR_MSGS::DIRECTION"))
(shadow '*BACKWARD* (find-package "MARTI_SENSOR_MSGS::DIRECTION"))
(defconstant marti_sensor_msgs::Direction::*BACKWARD* -1)
(intern "*ZERO*" (find-package "MARTI_SENSOR_MSGS::DIRECTION"))
(shadow '*ZERO* (find-package "MARTI_SENSOR_MSGS::DIRECTION"))
(defconstant marti_sensor_msgs::Direction::*ZERO* 0)
(intern "*FORWARD*" (find-package "MARTI_SENSOR_MSGS::DIRECTION"))
(shadow '*FORWARD* (find-package "MARTI_SENSOR_MSGS::DIRECTION"))
(defconstant marti_sensor_msgs::Direction::*FORWARD* 1)
(intern "*UNKNOWN*" (find-package "MARTI_SENSOR_MSGS::DIRECTION"))
(shadow '*UNKNOWN* (find-package "MARTI_SENSOR_MSGS::DIRECTION"))
(defconstant marti_sensor_msgs::Direction::*UNKNOWN* 127)
(defclass marti_sensor_msgs::Direction
  :super ros::object
  :slots (_header _direction ))

(defmethod marti_sensor_msgs::Direction
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:direction __direction) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _direction (round __direction))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _direction
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _direction
       (write-byte _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _direction 127) (setq _direction (- _direction 256)))
   ;;
   self)
  )

(setf (get marti_sensor_msgs::Direction :md5sum-) "f4fcbfc7e6f35aa53be850d25834349c")
(setf (get marti_sensor_msgs::Direction :datatype-) "marti_sensor_msgs/Direction")
(setf (get marti_sensor_msgs::Direction :definition-)
      "# Direction of vehicle motion
#
# When combined with an unsigned speed, this message can be used to determine
# signed vehicle speed

Header  header           # The time and location of the measurement.
                         # The x-axis in the sensor space is interpreted as the
                         # axis of linear motion.

int8 BACKWARD=-1
int8 ZERO=0
int8 FORWARD=1
int8 UNKNOWN=127         # Indicates either unknown motion or motion that isn't clear if it is forwards
                         # or backwards such as turning in place

int8 direction           # The direction of motion. Positive is forward, negative is
                         # backward, and 0 is stopped.

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



(provide :marti_sensor_msgs/Direction "f4fcbfc7e6f35aa53be850d25834349c")


