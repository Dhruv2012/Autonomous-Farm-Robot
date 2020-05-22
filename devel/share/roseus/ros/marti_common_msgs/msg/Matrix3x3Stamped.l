;; Auto-generated. Do not edit!


(when (boundp 'marti_common_msgs::Matrix3x3Stamped)
  (if (not (find-package "MARTI_COMMON_MSGS"))
    (make-package "MARTI_COMMON_MSGS"))
  (shadow 'Matrix3x3Stamped (find-package "MARTI_COMMON_MSGS")))
(unless (find-package "MARTI_COMMON_MSGS::MATRIX3X3STAMPED")
  (make-package "MARTI_COMMON_MSGS::MATRIX3X3STAMPED"))

(in-package "ROS")
;;//! \htmlinclude Matrix3x3Stamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_common_msgs::Matrix3x3Stamped
  :super ros::object
  :slots (_header _matrix ))

(defmethod marti_common_msgs::Matrix3x3Stamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:matrix __matrix) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _matrix __matrix)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:matrix
   (&optional __matrix)
   (if __matrix (setq _matrix __matrix)) _matrix)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[9] _matrix
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[9] _matrix
     (dotimes (i 9)
       (sys::poke (elt _matrix i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[9] _matrix
   (dotimes (i (length _matrix))
     (setf (elt _matrix i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get marti_common_msgs::Matrix3x3Stamped :md5sum-) "6f6aca2b78f71bd7b958ad349352f091")
(setf (get marti_common_msgs::Matrix3x3Stamped :datatype-) "marti_common_msgs/Matrix3x3Stamped")
(setf (get marti_common_msgs::Matrix3x3Stamped :definition-)
      "Header header

float64[9] matrix

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



(provide :marti_common_msgs/Matrix3x3Stamped "6f6aca2b78f71bd7b958ad349352f091")


