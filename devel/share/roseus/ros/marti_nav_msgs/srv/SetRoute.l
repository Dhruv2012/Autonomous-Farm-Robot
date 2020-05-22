;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::SetRoute)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'SetRoute (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::SETROUTE")
  (make-package "MARTI_NAV_MSGS::SETROUTE"))
(unless (find-package "MARTI_NAV_MSGS::SETROUTEREQUEST")
  (make-package "MARTI_NAV_MSGS::SETROUTEREQUEST"))
(unless (find-package "MARTI_NAV_MSGS::SETROUTERESPONSE")
  (make-package "MARTI_NAV_MSGS::SETROUTERESPONSE"))

(in-package "ROS")





(defclass marti_nav_msgs::SetRouteRequest
  :super ros::object
  :slots (_guid _repeat ))

(defmethod marti_nav_msgs::SetRouteRequest
  (:init
   (&key
    ((:guid __guid) "")
    ((:repeat __repeat) nil)
    )
   (send-super :init)
   (setq _guid (string __guid))
   (setq _repeat __repeat)
   self)
  (:guid
   (&optional __guid)
   (if __guid (setq _guid __guid)) _guid)
  (:repeat
   (&optional __repeat)
   (if __repeat (setq _repeat __repeat)) _repeat)
  (:serialization-length
   ()
   (+
    ;; string _guid
    4 (length _guid)
    ;; bool _repeat
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _guid
       (write-long (length _guid) s) (princ _guid s)
     ;; bool _repeat
       (if _repeat (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _guid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _guid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _repeat
     (setq _repeat (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass marti_nav_msgs::SetRouteResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marti_nav_msgs::SetRouteResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marti_nav_msgs::SetRoute
  :super ros::object
  :slots ())

(setf (get marti_nav_msgs::SetRoute :md5sum-) "0bc46443a53e01f8652f1e0c92515b05")
(setf (get marti_nav_msgs::SetRoute :datatype-) "marti_nav_msgs/SetRoute")
(setf (get marti_nav_msgs::SetRoute :request) marti_nav_msgs::SetRouteRequest)
(setf (get marti_nav_msgs::SetRoute :response) marti_nav_msgs::SetRouteResponse)

(defmethod marti_nav_msgs::SetRouteRequest
  (:response () (instance marti_nav_msgs::SetRouteResponse :init)))

(setf (get marti_nav_msgs::SetRouteRequest :md5sum-) "0bc46443a53e01f8652f1e0c92515b05")
(setf (get marti_nav_msgs::SetRouteRequest :datatype-) "marti_nav_msgs/SetRouteRequest")
(setf (get marti_nav_msgs::SetRouteRequest :definition-)
      "

string guid
bool repeat

---

bool success
string message

")

(setf (get marti_nav_msgs::SetRouteResponse :md5sum-) "0bc46443a53e01f8652f1e0c92515b05")
(setf (get marti_nav_msgs::SetRouteResponse :datatype-) "marti_nav_msgs/SetRouteResponse")
(setf (get marti_nav_msgs::SetRouteResponse :definition-)
      "

string guid
bool repeat

---

bool success
string message

")



(provide :marti_nav_msgs/SetRoute "0bc46443a53e01f8652f1e0c92515b05")


