;; Auto-generated. Do not edit!


(when (boundp 'marti_common_msgs::HealthStatus)
  (if (not (find-package "MARTI_COMMON_MSGS"))
    (make-package "MARTI_COMMON_MSGS"))
  (shadow 'HealthStatus (find-package "MARTI_COMMON_MSGS")))
(unless (find-package "MARTI_COMMON_MSGS::HEALTHSTATUS")
  (make-package "MARTI_COMMON_MSGS::HEALTHSTATUS"))

(in-package "ROS")
;;//! \htmlinclude HealthStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*OK*" (find-package "MARTI_COMMON_MSGS::HEALTHSTATUS"))
(shadow '*OK* (find-package "MARTI_COMMON_MSGS::HEALTHSTATUS"))
(defconstant marti_common_msgs::HealthStatus::*OK* 0)
(intern "*WARN*" (find-package "MARTI_COMMON_MSGS::HEALTHSTATUS"))
(shadow '*WARN* (find-package "MARTI_COMMON_MSGS::HEALTHSTATUS"))
(defconstant marti_common_msgs::HealthStatus::*WARN* 1)
(intern "*ERROR*" (find-package "MARTI_COMMON_MSGS::HEALTHSTATUS"))
(shadow '*ERROR* (find-package "MARTI_COMMON_MSGS::HEALTHSTATUS"))
(defconstant marti_common_msgs::HealthStatus::*ERROR* 2)
(intern "*STALE*" (find-package "MARTI_COMMON_MSGS::HEALTHSTATUS"))
(shadow '*STALE* (find-package "MARTI_COMMON_MSGS::HEALTHSTATUS"))
(defconstant marti_common_msgs::HealthStatus::*STALE* 3)
(defclass marti_common_msgs::HealthStatus
  :super ros::object
  :slots (_header _status _message ))

(defmethod marti_common_msgs::HealthStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (round __status))
   (setq _message (string __message))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8 _status
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8 _status
       (write-byte _status s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get marti_common_msgs::HealthStatus :md5sum-) "a825206a44c6c9bc395ddf748ca9fdfe")
(setf (get marti_common_msgs::HealthStatus :datatype-) "marti_common_msgs/HealthStatus")
(setf (get marti_common_msgs::HealthStatus :definition-)
      "# This message is intended for use as a light-weight machine status indicator for robot consumption
# whereas Diagnostics are for human consumption

int8 OK=0    # Initialized with no issues
int8 WARN=1  # Component is operating but the data may be inaccurate or there may be minor problems
int8 ERROR=2 # Component has encountered a serious problem and cannot or will not operate
int8 STALE=3 # Uninitialized or cannot determine status

Header header

int8   status
string message

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



(provide :marti_common_msgs/HealthStatus "a825206a44c6c9bc395ddf748ca9fdfe")


