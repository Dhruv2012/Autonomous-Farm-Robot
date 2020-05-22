;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::SaveRecordedRoute)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'SaveRecordedRoute (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::SAVERECORDEDROUTE")
  (make-package "MARTI_NAV_MSGS::SAVERECORDEDROUTE"))
(unless (find-package "MARTI_NAV_MSGS::SAVERECORDEDROUTEREQUEST")
  (make-package "MARTI_NAV_MSGS::SAVERECORDEDROUTEREQUEST"))
(unless (find-package "MARTI_NAV_MSGS::SAVERECORDEDROUTERESPONSE")
  (make-package "MARTI_NAV_MSGS::SAVERECORDEDROUTERESPONSE"))

(in-package "ROS")





(defclass marti_nav_msgs::SaveRecordedRouteRequest
  :super ros::object
  :slots (_name _thumbnail ))

(defmethod marti_nav_msgs::SaveRecordedRouteRequest
  (:init
   (&key
    ((:name __name) "")
    ((:thumbnail __thumbnail) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _thumbnail (string __thumbnail))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:thumbnail
   (&optional __thumbnail)
   (if __thumbnail (setq _thumbnail __thumbnail)) _thumbnail)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _thumbnail
    4 (length _thumbnail)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _thumbnail
       (write-long (length _thumbnail) s) (princ _thumbnail s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _thumbnail
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _thumbnail (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass marti_nav_msgs::SaveRecordedRouteResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marti_nav_msgs::SaveRecordedRouteResponse
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

(defclass marti_nav_msgs::SaveRecordedRoute
  :super ros::object
  :slots ())

(setf (get marti_nav_msgs::SaveRecordedRoute :md5sum-) "1d60247b7d1b53a7f54ab7ec855129c5")
(setf (get marti_nav_msgs::SaveRecordedRoute :datatype-) "marti_nav_msgs/SaveRecordedRoute")
(setf (get marti_nav_msgs::SaveRecordedRoute :request) marti_nav_msgs::SaveRecordedRouteRequest)
(setf (get marti_nav_msgs::SaveRecordedRoute :response) marti_nav_msgs::SaveRecordedRouteResponse)

(defmethod marti_nav_msgs::SaveRecordedRouteRequest
  (:response () (instance marti_nav_msgs::SaveRecordedRouteResponse :init)))

(setf (get marti_nav_msgs::SaveRecordedRouteRequest :md5sum-) "1d60247b7d1b53a7f54ab7ec855129c5")
(setf (get marti_nav_msgs::SaveRecordedRouteRequest :datatype-) "marti_nav_msgs/SaveRecordedRouteRequest")
(setf (get marti_nav_msgs::SaveRecordedRouteRequest :definition-)
      "string name
string thumbnail

---

bool success
string message

")

(setf (get marti_nav_msgs::SaveRecordedRouteResponse :md5sum-) "1d60247b7d1b53a7f54ab7ec855129c5")
(setf (get marti_nav_msgs::SaveRecordedRouteResponse :datatype-) "marti_nav_msgs/SaveRecordedRouteResponse")
(setf (get marti_nav_msgs::SaveRecordedRouteResponse :definition-)
      "string name
string thumbnail

---

bool success
string message

")



(provide :marti_nav_msgs/SaveRecordedRoute "1d60247b7d1b53a7f54ab7ec855129c5")


