;; Auto-generated. Do not edit!


(when (boundp 'marti_common_msgs::KeyValueArray)
  (if (not (find-package "MARTI_COMMON_MSGS"))
    (make-package "MARTI_COMMON_MSGS"))
  (shadow 'KeyValueArray (find-package "MARTI_COMMON_MSGS")))
(unless (find-package "MARTI_COMMON_MSGS::KEYVALUEARRAY")
  (make-package "MARTI_COMMON_MSGS::KEYVALUEARRAY"))

(in-package "ROS")
;;//! \htmlinclude KeyValueArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_common_msgs::KeyValueArray
  :super ros::object
  :slots (_header _items ))

(defmethod marti_common_msgs::KeyValueArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:items __items) (let (r) (dotimes (i 0) (push (instance marti_common_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _items __items)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:items
   (&rest __items)
   (if (keywordp (car __items))
       (send* _items __items)
     (progn
       (if __items (setq _items (car __items)))
       _items)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; marti_common_msgs/KeyValue[] _items
    (apply #'+ (send-all _items :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; marti_common_msgs/KeyValue[] _items
     (write-long (length _items) s)
     (dolist (elem _items)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; marti_common_msgs/KeyValue[] _items
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _items (let (r) (dotimes (i n) (push (instance marti_common_msgs::KeyValue :init) r)) r))
     (dolist (elem- _items)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get marti_common_msgs::KeyValueArray :md5sum-) "3b303032d5c2c08f75f9a40a839cb16c")
(setf (get marti_common_msgs::KeyValueArray :datatype-) "marti_common_msgs/KeyValueArray")
(setf (get marti_common_msgs::KeyValueArray :definition-)
      "# A generic message for publishing a list of key value pairs directly.

Header header

KeyValue[] items

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

================================================================================
MSG: marti_common_msgs/KeyValue
# An arbitrary key-value pair

string key
string value

")



(provide :marti_common_msgs/KeyValueArray "3b303032d5c2c08f75f9a40a839cb16c")


