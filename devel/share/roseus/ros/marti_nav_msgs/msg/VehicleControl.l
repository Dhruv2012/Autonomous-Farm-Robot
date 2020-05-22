;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::VehicleControl)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'VehicleControl (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::VEHICLECONTROL")
  (make-package "MARTI_NAV_MSGS::VEHICLECONTROL"))

(in-package "ROS")
;;//! \htmlinclude VehicleControl.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::VehicleControl
  :super ros::object
  :slots (_header _engine _gear _steering _throttle _brake _steering_position _gb_position ))

(defmethod marti_nav_msgs::VehicleControl
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:engine __engine) 0)
    ((:gear __gear) 0)
    ((:steering __steering) 0.0)
    ((:throttle __throttle) 0.0)
    ((:brake __brake) 0.0)
    ((:steering_position __steering_position) 0)
    ((:gb_position __gb_position) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _engine (round __engine))
   (setq _gear (round __gear))
   (setq _steering (float __steering))
   (setq _throttle (float __throttle))
   (setq _brake (float __brake))
   (setq _steering_position (round __steering_position))
   (setq _gb_position (round __gb_position))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:engine
   (&optional __engine)
   (if __engine (setq _engine __engine)) _engine)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:steering_position
   (&optional __steering_position)
   (if __steering_position (setq _steering_position __steering_position)) _steering_position)
  (:gb_position
   (&optional __gb_position)
   (if __gb_position (setq _gb_position __gb_position)) _gb_position)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _engine
    4
    ;; int32 _gear
    4
    ;; float64 _steering
    8
    ;; float64 _throttle
    8
    ;; float64 _brake
    8
    ;; int16 _steering_position
    2
    ;; int16 _gb_position
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _engine
       (write-long _engine s)
     ;; int32 _gear
       (write-long _gear s)
     ;; float64 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _steering_position
       (write-word _steering_position s)
     ;; int16 _gb_position
       (write-word _gb_position s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _engine
     (setq _engine (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gear
     (setq _gear (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _steering
     (setq _steering (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake
     (setq _brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _steering_position
     (setq _steering_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _gb_position
     (setq _gb_position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get marti_nav_msgs::VehicleControl :md5sum-) "afc6b0b97f62f744f4b35119ffb6e337")
(setf (get marti_nav_msgs::VehicleControl :datatype-) "marti_nav_msgs/VehicleControl")
(setf (get marti_nav_msgs::VehicleControl :definition-)
      "Header 		header

int32 		engine
int32 		gear
float64 	steering
float64 	throttle
float64 	brake
int16 		steering_position
int16 		gb_position
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



(provide :marti_nav_msgs/VehicleControl "afc6b0b97f62f744f4b35119ffb6e337")


