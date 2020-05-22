;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::LeadVehicle)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'LeadVehicle (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::LEADVEHICLE")
  (make-package "MARTI_NAV_MSGS::LEADVEHICLE"))

(in-package "ROS")
;;//! \htmlinclude LeadVehicle.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::LeadVehicle
  :super ros::object
  :slots (_header _headwayDistance _speed _heading _xPos _yPos _classification _type ))

(defmethod marti_nav_msgs::LeadVehicle
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:headwayDistance __headwayDistance) 0.0)
    ((:speed __speed) 0.0)
    ((:heading __heading) 0.0)
    ((:xPos __xPos) 0.0)
    ((:yPos __yPos) 0.0)
    ((:classification __classification) 0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _headwayDistance (float __headwayDistance))
   (setq _speed (float __speed))
   (setq _heading (float __heading))
   (setq _xPos (float __xPos))
   (setq _yPos (float __yPos))
   (setq _classification (round __classification))
   (setq _type (round __type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:headwayDistance
   (&optional __headwayDistance)
   (if __headwayDistance (setq _headwayDistance __headwayDistance)) _headwayDistance)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:xPos
   (&optional __xPos)
   (if __xPos (setq _xPos __xPos)) _xPos)
  (:yPos
   (&optional __yPos)
   (if __yPos (setq _yPos __yPos)) _yPos)
  (:classification
   (&optional __classification)
   (if __classification (setq _classification __classification)) _classification)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _headwayDistance
    4
    ;; float32 _speed
    4
    ;; float32 _heading
    4
    ;; float32 _xPos
    4
    ;; float32 _yPos
    4
    ;; int8 _classification
    1
    ;; int8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _headwayDistance
       (sys::poke _headwayDistance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _xPos
       (sys::poke _xPos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yPos
       (sys::poke _yPos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _classification
       (write-byte _classification s)
     ;; int8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _headwayDistance
     (setq _headwayDistance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _xPos
     (setq _xPos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yPos
     (setq _yPos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _classification
     (setq _classification (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _classification 127) (setq _classification (- _classification 256)))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;;
   self)
  )

(setf (get marti_nav_msgs::LeadVehicle :md5sum-) "123a04e085bfddd727efd0e68809c765")
(setf (get marti_nav_msgs::LeadVehicle :datatype-) "marti_nav_msgs/LeadVehicle")
(setf (get marti_nav_msgs::LeadVehicle :definition-)
      "Header header

float32 headwayDistance
float32 speed
float32 heading
float32 xPos
float32 yPos
int8 classification
int8 type

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



(provide :marti_nav_msgs/LeadVehicle "123a04e085bfddd727efd0e68809c765")


