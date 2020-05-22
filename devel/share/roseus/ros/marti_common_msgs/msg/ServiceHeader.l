;; Auto-generated. Do not edit!


(when (boundp 'marti_common_msgs::ServiceHeader)
  (if (not (find-package "MARTI_COMMON_MSGS"))
    (make-package "MARTI_COMMON_MSGS"))
  (shadow 'ServiceHeader (find-package "MARTI_COMMON_MSGS")))
(unless (find-package "MARTI_COMMON_MSGS::SERVICEHEADER")
  (make-package "MARTI_COMMON_MSGS::SERVICEHEADER"))

(in-package "ROS")
;;//! \htmlinclude ServiceHeader.msg.html


(defclass marti_common_msgs::ServiceHeader
  :super ros::object
  :slots (_stamp _sequence _sender _result ))

(defmethod marti_common_msgs::ServiceHeader
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:sequence __sequence) 0)
    ((:sender __sender) "")
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _sequence (round __sequence))
   (setq _sender (string __sender))
   (setq _result __result)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:sender
   (&optional __sender)
   (if __sender (setq _sender __sender)) _sender)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _sequence
    4
    ;; string _sender
    4 (length _sender)
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _sequence
       (write-long _sequence s)
     ;; string _sender
       (write-long (length _sender) s) (princ _sender s)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sequence
     (setq _sequence (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _sender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get marti_common_msgs::ServiceHeader :md5sum-) "c9ecea07422007ad3a23c820ab38111a")
(setf (get marti_common_msgs::ServiceHeader :datatype-) "marti_common_msgs/ServiceHeader")
(setf (get marti_common_msgs::ServiceHeader :definition-)
      "# This message contains all of the data filled in automatically by the service system
# It is required in each request and response message to be named srv_header
time stamp
uint32 sequence
string sender
bool result # Used to indicate if the service request was successful or not

")



(provide :marti_common_msgs/ServiceHeader "c9ecea07422007ad3a23c820ab38111a")


