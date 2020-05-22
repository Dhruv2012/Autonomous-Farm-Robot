;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::DeleteRoute)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'DeleteRoute (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::DELETEROUTE")
  (make-package "MARTI_NAV_MSGS::DELETEROUTE"))
(unless (find-package "MARTI_NAV_MSGS::DELETEROUTEREQUEST")
  (make-package "MARTI_NAV_MSGS::DELETEROUTEREQUEST"))
(unless (find-package "MARTI_NAV_MSGS::DELETEROUTERESPONSE")
  (make-package "MARTI_NAV_MSGS::DELETEROUTERESPONSE"))

(in-package "ROS")





(defclass marti_nav_msgs::DeleteRouteRequest
  :super ros::object
  :slots (_guid ))

(defmethod marti_nav_msgs::DeleteRouteRequest
  (:init
   (&key
    ((:guid __guid) "")
    )
   (send-super :init)
   (setq _guid (string __guid))
   self)
  (:guid
   (&optional __guid)
   (if __guid (setq _guid __guid)) _guid)
  (:serialization-length
   ()
   (+
    ;; string _guid
    4 (length _guid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _guid
       (write-long (length _guid) s) (princ _guid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _guid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _guid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marti_nav_msgs::DeleteRouteResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marti_nav_msgs::DeleteRouteResponse
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

(defclass marti_nav_msgs::DeleteRoute
  :super ros::object
  :slots ())

(setf (get marti_nav_msgs::DeleteRoute :md5sum-) "9f9e2ffb5f3c35330346e06164f26526")
(setf (get marti_nav_msgs::DeleteRoute :datatype-) "marti_nav_msgs/DeleteRoute")
(setf (get marti_nav_msgs::DeleteRoute :request) marti_nav_msgs::DeleteRouteRequest)
(setf (get marti_nav_msgs::DeleteRoute :response) marti_nav_msgs::DeleteRouteResponse)

(defmethod marti_nav_msgs::DeleteRouteRequest
  (:response () (instance marti_nav_msgs::DeleteRouteResponse :init)))

(setf (get marti_nav_msgs::DeleteRouteRequest :md5sum-) "9f9e2ffb5f3c35330346e06164f26526")
(setf (get marti_nav_msgs::DeleteRouteRequest :datatype-) "marti_nav_msgs/DeleteRouteRequest")
(setf (get marti_nav_msgs::DeleteRouteRequest :definition-)
      "string guid
---
bool success
string message

")

(setf (get marti_nav_msgs::DeleteRouteResponse :md5sum-) "9f9e2ffb5f3c35330346e06164f26526")
(setf (get marti_nav_msgs::DeleteRouteResponse :datatype-) "marti_nav_msgs/DeleteRouteResponse")
(setf (get marti_nav_msgs::DeleteRouteResponse :definition-)
      "string guid
---
bool success
string message

")



(provide :marti_nav_msgs/DeleteRoute "9f9e2ffb5f3c35330346e06164f26526")


