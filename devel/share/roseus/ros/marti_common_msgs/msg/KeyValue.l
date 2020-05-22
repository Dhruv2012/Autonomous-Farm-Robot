;; Auto-generated. Do not edit!


(when (boundp 'marti_common_msgs::KeyValue)
  (if (not (find-package "MARTI_COMMON_MSGS"))
    (make-package "MARTI_COMMON_MSGS"))
  (shadow 'KeyValue (find-package "MARTI_COMMON_MSGS")))
(unless (find-package "MARTI_COMMON_MSGS::KEYVALUE")
  (make-package "MARTI_COMMON_MSGS::KEYVALUE"))

(in-package "ROS")
;;//! \htmlinclude KeyValue.msg.html


(defclass marti_common_msgs::KeyValue
  :super ros::object
  :slots (_key _value ))

(defmethod marti_common_msgs::KeyValue
  (:init
   (&key
    ((:key __key) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _key (string __key))
   (setq _value (string __value))
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; string _key
    4 (length _key)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get marti_common_msgs::KeyValue :md5sum-) "cf57fdc6617a881a88c16e768132149c")
(setf (get marti_common_msgs::KeyValue :datatype-) "marti_common_msgs/KeyValue")
(setf (get marti_common_msgs::KeyValue :definition-)
      "# An arbitrary key-value pair

string key
string value

")



(provide :marti_common_msgs/KeyValue "cf57fdc6617a881a88c16e768132149c")


