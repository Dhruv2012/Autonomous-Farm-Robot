;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::UpdateRouteMetadata)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'UpdateRouteMetadata (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::UPDATEROUTEMETADATA")
  (make-package "MARTI_NAV_MSGS::UPDATEROUTEMETADATA"))
(unless (find-package "MARTI_NAV_MSGS::UPDATEROUTEMETADATAREQUEST")
  (make-package "MARTI_NAV_MSGS::UPDATEROUTEMETADATAREQUEST"))
(unless (find-package "MARTI_NAV_MSGS::UPDATEROUTEMETADATARESPONSE")
  (make-package "MARTI_NAV_MSGS::UPDATEROUTEMETADATARESPONSE"))

(in-package "ROS")





(defclass marti_nav_msgs::UpdateRouteMetadataRequest
  :super ros::object
  :slots (_route_guid _metadata_points ))

(defmethod marti_nav_msgs::UpdateRouteMetadataRequest
  (:init
   (&key
    ((:route_guid __route_guid) "")
    ((:metadata_points __metadata_points) (let (r) (dotimes (i 0) (push (instance marti_nav_msgs::RoutePoint :init) r)) r))
    )
   (send-super :init)
   (setq _route_guid (string __route_guid))
   (setq _metadata_points __metadata_points)
   self)
  (:route_guid
   (&optional __route_guid)
   (if __route_guid (setq _route_guid __route_guid)) _route_guid)
  (:metadata_points
   (&rest __metadata_points)
   (if (keywordp (car __metadata_points))
       (send* _metadata_points __metadata_points)
     (progn
       (if __metadata_points (setq _metadata_points (car __metadata_points)))
       _metadata_points)))
  (:serialization-length
   ()
   (+
    ;; string _route_guid
    4 (length _route_guid)
    ;; marti_nav_msgs/RoutePoint[] _metadata_points
    (apply #'+ (send-all _metadata_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _route_guid
       (write-long (length _route_guid) s) (princ _route_guid s)
     ;; marti_nav_msgs/RoutePoint[] _metadata_points
     (write-long (length _metadata_points) s)
     (dolist (elem _metadata_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _route_guid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _route_guid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; marti_nav_msgs/RoutePoint[] _metadata_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _metadata_points (let (r) (dotimes (i n) (push (instance marti_nav_msgs::RoutePoint :init) r)) r))
     (dolist (elem- _metadata_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass marti_nav_msgs::UpdateRouteMetadataResponse
  :super ros::object
  :slots (_success _message ))

(defmethod marti_nav_msgs::UpdateRouteMetadataResponse
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

(defclass marti_nav_msgs::UpdateRouteMetadata
  :super ros::object
  :slots ())

(setf (get marti_nav_msgs::UpdateRouteMetadata :md5sum-) "680bbce4d545516006965d175dfcdb08")
(setf (get marti_nav_msgs::UpdateRouteMetadata :datatype-) "marti_nav_msgs/UpdateRouteMetadata")
(setf (get marti_nav_msgs::UpdateRouteMetadata :request) marti_nav_msgs::UpdateRouteMetadataRequest)
(setf (get marti_nav_msgs::UpdateRouteMetadata :response) marti_nav_msgs::UpdateRouteMetadataResponse)

(defmethod marti_nav_msgs::UpdateRouteMetadataRequest
  (:response () (instance marti_nav_msgs::UpdateRouteMetadataResponse :init)))

(setf (get marti_nav_msgs::UpdateRouteMetadataRequest :md5sum-) "680bbce4d545516006965d175dfcdb08")
(setf (get marti_nav_msgs::UpdateRouteMetadataRequest :datatype-) "marti_nav_msgs/UpdateRouteMetadataRequest")
(setf (get marti_nav_msgs::UpdateRouteMetadataRequest :definition-)
      "







string route_guid
marti_nav_msgs/RoutePoint[] metadata_points

================================================================================
MSG: marti_nav_msgs/RoutePoint
geometry_msgs/Pose           pose
string                       id         # unique identifier for this point
marti_common_msgs/KeyValue[] properties

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: marti_common_msgs/KeyValue
# An arbitrary key-value pair

string key
string value
---
bool success
string message


")

(setf (get marti_nav_msgs::UpdateRouteMetadataResponse :md5sum-) "680bbce4d545516006965d175dfcdb08")
(setf (get marti_nav_msgs::UpdateRouteMetadataResponse :datatype-) "marti_nav_msgs/UpdateRouteMetadataResponse")
(setf (get marti_nav_msgs::UpdateRouteMetadataResponse :definition-)
      "







string route_guid
marti_nav_msgs/RoutePoint[] metadata_points

================================================================================
MSG: marti_nav_msgs/RoutePoint
geometry_msgs/Pose           pose
string                       id         # unique identifier for this point
marti_common_msgs/KeyValue[] properties

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: marti_common_msgs/KeyValue
# An arbitrary key-value pair

string key
string value
---
bool success
string message


")



(provide :marti_nav_msgs/UpdateRouteMetadata "680bbce4d545516006965d175dfcdb08")


