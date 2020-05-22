;; Auto-generated. Do not edit!


(when (boundp 'marti_common_msgs::DurationStamped)
  (if (not (find-package "MARTI_COMMON_MSGS"))
    (make-package "MARTI_COMMON_MSGS"))
  (shadow 'DurationStamped (find-package "MARTI_COMMON_MSGS")))
(unless (find-package "MARTI_COMMON_MSGS::DURATIONSTAMPED")
  (make-package "MARTI_COMMON_MSGS::DURATIONSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude DurationStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_common_msgs::DurationStamped
  :super ros::object
  :slots (_header _value ))

(defmethod marti_common_msgs::DurationStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:value __value) (instance ros::time :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _value __value)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; duration _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; duration _value
       (write-long (send _value :sec) s) (write-long (send _value :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; duration _value
     (send _value :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _value :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get marti_common_msgs::DurationStamped :md5sum-) "abd101ec65114034e9bd0e187b790140")
(setf (get marti_common_msgs::DurationStamped :datatype-) "marti_common_msgs/DurationStamped")
(setf (get marti_common_msgs::DurationStamped :definition-)
      "Header header

duration value

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



(provide :marti_common_msgs/DurationStamped "abd101ec65114034e9bd0e187b790140")


