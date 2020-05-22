;; Auto-generated. Do not edit!


(when (boundp 'marti_perception_msgs::PedestrianImageID)
  (if (not (find-package "MARTI_PERCEPTION_MSGS"))
    (make-package "MARTI_PERCEPTION_MSGS"))
  (shadow 'PedestrianImageID (find-package "MARTI_PERCEPTION_MSGS")))
(unless (find-package "MARTI_PERCEPTION_MSGS::PEDESTRIANIMAGEID")
  (make-package "MARTI_PERCEPTION_MSGS::PEDESTRIANIMAGEID"))

(in-package "ROS")
;;//! \htmlinclude PedestrianImageID.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_perception_msgs::PedestrianImageID
  :super ros::object
  :slots (_header _pixel_x _pixel_y _image_width _image_height ))

(defmethod marti_perception_msgs::PedestrianImageID
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pixel_x __pixel_x) 0)
    ((:pixel_y __pixel_y) 0)
    ((:image_width __image_width) 0)
    ((:image_height __image_height) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _pixel_x (round __pixel_x))
   (setq _pixel_y (round __pixel_y))
   (setq _image_width (round __image_width))
   (setq _image_height (round __image_height))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pixel_x
   (&optional __pixel_x)
   (if __pixel_x (setq _pixel_x __pixel_x)) _pixel_x)
  (:pixel_y
   (&optional __pixel_y)
   (if __pixel_y (setq _pixel_y __pixel_y)) _pixel_y)
  (:image_width
   (&optional __image_width)
   (if __image_width (setq _image_width __image_width)) _image_width)
  (:image_height
   (&optional __image_height)
   (if __image_height (setq _image_height __image_height)) _image_height)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _pixel_x
    4
    ;; int32 _pixel_y
    4
    ;; int32 _image_width
    4
    ;; int32 _image_height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _pixel_x
       (write-long _pixel_x s)
     ;; int32 _pixel_y
       (write-long _pixel_y s)
     ;; int32 _image_width
       (write-long _image_width s)
     ;; int32 _image_height
       (write-long _image_height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _pixel_x
     (setq _pixel_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pixel_y
     (setq _pixel_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _image_width
     (setq _image_width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _image_height
     (setq _image_height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get marti_perception_msgs::PedestrianImageID :md5sum-) "91d4875ed8a841454974fa0ce176cc1e")
(setf (get marti_perception_msgs::PedestrianImageID :datatype-) "marti_perception_msgs/PedestrianImageID")
(setf (get marti_perception_msgs::PedestrianImageID :definition-)
      "Header header

int32 pixel_x
int32 pixel_y
int32 image_width	  # in pixels
int32 image_height	# in pixels

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



(provide :marti_perception_msgs/PedestrianImageID "91d4875ed8a841454974fa0ce176cc1e")


