;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::Command)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'Command (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::COMMAND")
  (make-package "MARTI_NAV_MSGS::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::Command
  :super ros::object
  :slots (_header _startstop ))

(defmethod marti_nav_msgs::Command
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:startstop __startstop) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _startstop __startstop)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:startstop
   (&optional __startstop)
   (if __startstop (setq _startstop __startstop)) _startstop)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _startstop
    (* 4    (length _startstop)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _startstop
     (write-long (length _startstop) s)
     (dotimes (i (length _startstop))
       (write-long (elt _startstop i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _startstop
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _startstop (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _startstop i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get marti_nav_msgs::Command :md5sum-) "252763f31a786611d807254ade7c1dc3")
(setf (get marti_nav_msgs::Command :datatype-) "marti_nav_msgs/Command")
(setf (get marti_nav_msgs::Command :definition-)
      "Header header

int32[] startstop

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



(provide :marti_nav_msgs/Command "252763f31a786611d807254ade7c1dc3")


