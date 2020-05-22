;; Auto-generated. Do not edit!


(when (boundp 'marti_can_msgs::CanFrame)
  (if (not (find-package "MARTI_CAN_MSGS"))
    (make-package "MARTI_CAN_MSGS"))
  (shadow 'CanFrame (find-package "MARTI_CAN_MSGS")))
(unless (find-package "MARTI_CAN_MSGS::CANFRAME")
  (make-package "MARTI_CAN_MSGS::CANFRAME"))

(in-package "ROS")
;;//! \htmlinclude CanFrame.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MSGTYPE_STANDARD*" (find-package "MARTI_CAN_MSGS::CANFRAME"))
(shadow '*MSGTYPE_STANDARD* (find-package "MARTI_CAN_MSGS::CANFRAME"))
(defconstant marti_can_msgs::CanFrame::*MSGTYPE_STANDARD* 0)
(intern "*MSGTYPE_RTR*" (find-package "MARTI_CAN_MSGS::CANFRAME"))
(shadow '*MSGTYPE_RTR* (find-package "MARTI_CAN_MSGS::CANFRAME"))
(defconstant marti_can_msgs::CanFrame::*MSGTYPE_RTR* 1)
(intern "*MSGTYPE_EXTENDED*" (find-package "MARTI_CAN_MSGS::CANFRAME"))
(shadow '*MSGTYPE_EXTENDED* (find-package "MARTI_CAN_MSGS::CANFRAME"))
(defconstant marti_can_msgs::CanFrame::*MSGTYPE_EXTENDED* 2)
(intern "*MSGTYPE_STATUS*" (find-package "MARTI_CAN_MSGS::CANFRAME"))
(shadow '*MSGTYPE_STATUS* (find-package "MARTI_CAN_MSGS::CANFRAME"))
(defconstant marti_can_msgs::CanFrame::*MSGTYPE_STATUS* 128)
(defclass marti_can_msgs::CanFrame
  :super ros::object
  :slots (_header _ID _msg_type _data_length _data ))

(defmethod marti_can_msgs::CanFrame
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ID __ID) 0)
    ((:msg_type __msg_type) 0)
    ((:data_length __data_length) 0)
    ((:data __data) (make-array 8 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _ID (round __ID))
   (setq _msg_type (round __msg_type))
   (setq _data_length (round __data_length))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:msg_type
   (&optional __msg_type)
   (if __msg_type (setq _msg_type __msg_type)) _msg_type)
  (:data_length
   (&optional __data_length)
   (if __data_length (setq _data_length __data_length)) _data_length)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _ID
    4
    ;; uint8 _msg_type
    1
    ;; uint8 _data_length
    1
    ;; uint8[8] _data
    (* 1    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _ID
       (write-long _ID s)
     ;; uint8 _msg_type
       (write-byte _msg_type s)
     ;; uint8 _data_length
       (write-byte _data_length s)
     ;; uint8[8] _data
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _msg_type
     (setq _msg_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _data_length
     (setq _data_length (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[8] _data
   (setq _data (make-array 8 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 8)
   ;;
   self)
  )

(setf (get marti_can_msgs::CanFrame :md5sum-) "c60d055845d0e93bcf7d8d8dca084be7")
(setf (get marti_can_msgs::CanFrame :datatype-) "marti_can_msgs/CanFrame")
(setf (get marti_can_msgs::CanFrame :definition-)
      "Header header
# Header timestamp is the time when all messages were acquired
# and synchronized.

uint32 ID
# CAN Message ID - This is 11 bits for standard frames or 29 bits for
# extended frames.

uint8 msg_type	  
# CAN Message Type.  This should be one of the constants defined
# below.  (Constants used to match pcan.h from Peak's driver.)
uint8 MSGTYPE_STANDARD = 0
uint8 MSGTYPE_RTR = 1
uint8 MSGTYPE_EXTENDED = 2
uint8 MSGTYPE_STATUS = 128

uint8 data_length
# Count of data bytes (0..8)

uint8[8] data
# Data bytes, up to 8

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



(provide :marti_can_msgs/CanFrame "c60d055845d0e93bcf7d8d8dca084be7")


