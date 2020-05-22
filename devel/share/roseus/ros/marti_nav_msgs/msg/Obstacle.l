;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::Obstacle)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'Obstacle (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::OBSTACLE")
  (make-package "MARTI_NAV_MSGS::OBSTACLE"))

(in-package "ROS")
;;//! \htmlinclude Obstacle.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass marti_nav_msgs::Obstacle
  :super ros::object
  :slots (_id _pose _polygon ))

(defmethod marti_nav_msgs::Obstacle
  (:init
   (&key
    ((:id __id) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:polygon __polygon) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _pose __pose)
   (setq _polygon __polygon)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Point[] _polygon
    (apply #'+ (send-all _polygon :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Point[] _polygon
     (write-long (length _polygon) s)
     (dolist (elem _polygon)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Point[] _polygon
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygon (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _polygon)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get marti_nav_msgs::Obstacle :md5sum-) "6379634b2f186de37a480e1f3f9b2e7f")
(setf (get marti_nav_msgs::Obstacle :datatype-) "marti_nav_msgs/Obstacle")
(setf (get marti_nav_msgs::Obstacle :definition-)
      "string id
# Unique id for the obstacle or empty if not used.

geometry_msgs/Pose pose
# The pose of the origin of the obstacle.

geometry_msgs/Point[] polygon
# A list of points that define the obstacle's geometry in horizontal
# plane relative to the obstacle's pose.  The polygon is implicitly
# closed by a segment between the last and first points.

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

")



(provide :marti_nav_msgs/Obstacle "6379634b2f186de37a480e1f3f9b2e7f")


