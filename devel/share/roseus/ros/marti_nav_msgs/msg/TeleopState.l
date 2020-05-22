;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::TeleopState)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'TeleopState (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::TELEOPSTATE")
  (make-package "MARTI_NAV_MSGS::TELEOPSTATE"))

(in-package "ROS")
;;//! \htmlinclude TeleopState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::TeleopState
  :super ros::object
  :slots (_header _teleopSignals ))

(defmethod marti_nav_msgs::TeleopState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:teleopSignals __teleopSignals) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _teleopSignals __teleopSignals)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:teleopSignals
   (&optional __teleopSignals)
   (if __teleopSignals (setq _teleopSignals __teleopSignals)) _teleopSignals)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _teleopSignals
    (* 4    (length _teleopSignals)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _teleopSignals
     (write-long (length _teleopSignals) s)
     (dotimes (i (length _teleopSignals))
       (write-long (elt _teleopSignals i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _teleopSignals
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _teleopSignals (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _teleopSignals i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get marti_nav_msgs::TeleopState :md5sum-) "7af42bf9109e393cbfb4bd740df95c1e")
(setf (get marti_nav_msgs::TeleopState :datatype-) "marti_nav_msgs/TeleopState")
(setf (get marti_nav_msgs::TeleopState :definition-)
      "Header header	

int32[] teleopSignals
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



(provide :marti_nav_msgs/TeleopState "7af42bf9109e393cbfb4bd740df95c1e")


