;; Auto-generated. Do not edit!


(when (boundp 'marti_common_msgs::StringArrayStamped)
  (if (not (find-package "MARTI_COMMON_MSGS"))
    (make-package "MARTI_COMMON_MSGS"))
  (shadow 'StringArrayStamped (find-package "MARTI_COMMON_MSGS")))
(unless (find-package "MARTI_COMMON_MSGS::STRINGARRAYSTAMPED")
  (make-package "MARTI_COMMON_MSGS::STRINGARRAYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude StringArrayStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_common_msgs::StringArrayStamped
  :super ros::object
  :slots (_header _strings ))

(defmethod marti_common_msgs::StringArrayStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:strings __strings) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _strings __strings)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:strings
   (&optional __strings)
   (if __strings (setq _strings __strings)) _strings)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _strings
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _strings)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _strings
     (write-long (length _strings) s)
     (dolist (elem _strings)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _strings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _strings (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _strings i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get marti_common_msgs::StringArrayStamped :md5sum-) "e8d1c28bfef374ffc40e1645c020607f")
(setf (get marti_common_msgs::StringArrayStamped :datatype-) "marti_common_msgs/StringArrayStamped")
(setf (get marti_common_msgs::StringArrayStamped :definition-)
      "# A generic message for publishing a list of strings.

Header header

string[] strings

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



(provide :marti_common_msgs/StringArrayStamped "e8d1c28bfef374ffc40e1645c020607f")


