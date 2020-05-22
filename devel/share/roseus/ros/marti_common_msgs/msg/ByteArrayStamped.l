;; Auto-generated. Do not edit!


(when (boundp 'marti_common_msgs::ByteArrayStamped)
  (if (not (find-package "MARTI_COMMON_MSGS"))
    (make-package "MARTI_COMMON_MSGS"))
  (shadow 'ByteArrayStamped (find-package "MARTI_COMMON_MSGS")))
(unless (find-package "MARTI_COMMON_MSGS::BYTEARRAYSTAMPED")
  (make-package "MARTI_COMMON_MSGS::BYTEARRAYSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude ByteArrayStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_common_msgs::ByteArrayStamped
  :super ros::object
  :slots (_header _value ))

(defmethod marti_common_msgs::ByteArrayStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:value __value) (make-array 0 :initial-element 0 :element-type :integer))
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
    ;; byte[] _value
    (* 1    (length _value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; byte[] _value
     (write-long (length _value) s)
     (dotimes (i (length _value))
       (write-byte (elt _value i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; byte[] _value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _value i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _value i) 127) (setf (elt _value i) (- (elt _value i) 256)))
     ))
   ;;
   self)
  )

(setf (get marti_common_msgs::ByteArrayStamped :md5sum-) "375ed7aa29ecfbdffa16b36b36760a28")
(setf (get marti_common_msgs::ByteArrayStamped :datatype-) "marti_common_msgs/ByteArrayStamped")
(setf (get marti_common_msgs::ByteArrayStamped :definition-)
      "Header header

byte[] value

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



(provide :marti_common_msgs/ByteArrayStamped "375ed7aa29ecfbdffa16b36b36760a28")


