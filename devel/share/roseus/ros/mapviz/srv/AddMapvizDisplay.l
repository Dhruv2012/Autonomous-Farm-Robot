;; Auto-generated. Do not edit!


(when (boundp 'mapviz::AddMapvizDisplay)
  (if (not (find-package "MAPVIZ"))
    (make-package "MAPVIZ"))
  (shadow 'AddMapvizDisplay (find-package "MAPVIZ")))
(unless (find-package "MAPVIZ::ADDMAPVIZDISPLAY")
  (make-package "MAPVIZ::ADDMAPVIZDISPLAY"))
(unless (find-package "MAPVIZ::ADDMAPVIZDISPLAYREQUEST")
  (make-package "MAPVIZ::ADDMAPVIZDISPLAYREQUEST"))
(unless (find-package "MAPVIZ::ADDMAPVIZDISPLAYRESPONSE")
  (make-package "MAPVIZ::ADDMAPVIZDISPLAYRESPONSE"))

(in-package "ROS")

(if (not (find-package "MARTI_COMMON_MSGS"))
  (ros::roseus-add-msgs "marti_common_msgs"))




(defclass mapviz::AddMapvizDisplayRequest
  :super ros::object
  :slots (_name _type _draw_order _visible _properties ))

(defmethod mapviz::AddMapvizDisplayRequest
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    ((:draw_order __draw_order) 0)
    ((:visible __visible) nil)
    ((:properties __properties) (let (r) (dotimes (i 0) (push (instance marti_common_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _draw_order (round __draw_order))
   (setq _visible __visible)
   (setq _properties __properties)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:draw_order
   (&optional __draw_order)
   (if __draw_order (setq _draw_order __draw_order)) _draw_order)
  (:visible
   (&optional __visible)
   (if __visible (setq _visible __visible)) _visible)
  (:properties
   (&rest __properties)
   (if (keywordp (car __properties))
       (send* _properties __properties)
     (progn
       (if __properties (setq _properties (car __properties)))
       _properties)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; int32 _draw_order
    4
    ;; bool _visible
    1
    ;; marti_common_msgs/KeyValue[] _properties
    (apply #'+ (send-all _properties :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; int32 _draw_order
       (write-long _draw_order s)
     ;; bool _visible
       (if _visible (write-byte -1 s) (write-byte 0 s))
     ;; marti_common_msgs/KeyValue[] _properties
     (write-long (length _properties) s)
     (dolist (elem _properties)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _draw_order
     (setq _draw_order (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _visible
     (setq _visible (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; marti_common_msgs/KeyValue[] _properties
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _properties (let (r) (dotimes (i n) (push (instance marti_common_msgs::KeyValue :init) r)) r))
     (dolist (elem- _properties)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass mapviz::AddMapvizDisplayResponse
  :super ros::object
  :slots (_success _message ))

(defmethod mapviz::AddMapvizDisplayResponse
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

(defclass mapviz::AddMapvizDisplay
  :super ros::object
  :slots ())

(setf (get mapviz::AddMapvizDisplay :md5sum-) "7bd51d7a9d8469fae51039cf79b96d10")
(setf (get mapviz::AddMapvizDisplay :datatype-) "mapviz/AddMapvizDisplay")
(setf (get mapviz::AddMapvizDisplay :request) mapviz::AddMapvizDisplayRequest)
(setf (get mapviz::AddMapvizDisplay :response) mapviz::AddMapvizDisplayResponse)

(defmethod mapviz::AddMapvizDisplayRequest
  (:response () (instance mapviz::AddMapvizDisplayResponse :init)))

(setf (get mapviz::AddMapvizDisplayRequest :md5sum-) "7bd51d7a9d8469fae51039cf79b96d10")
(setf (get mapviz::AddMapvizDisplayRequest :datatype-) "mapviz/AddMapvizDisplayRequest")
(setf (get mapviz::AddMapvizDisplayRequest :definition-)
      "

string                        name
string                        type

int32                         draw_order







bool                          visible

marti_common_msgs/KeyValue[]  properties


================================================================================
MSG: marti_common_msgs/KeyValue
# An arbitrary key-value pair

string key
string value
---

bool   success
string message

")

(setf (get mapviz::AddMapvizDisplayResponse :md5sum-) "7bd51d7a9d8469fae51039cf79b96d10")
(setf (get mapviz::AddMapvizDisplayResponse :datatype-) "mapviz/AddMapvizDisplayResponse")
(setf (get mapviz::AddMapvizDisplayResponse :definition-)
      "

string                        name
string                        type

int32                         draw_order







bool                          visible

marti_common_msgs/KeyValue[]  properties


================================================================================
MSG: marti_common_msgs/KeyValue
# An arbitrary key-value pair

string key
string value
---

bool   success
string message

")



(provide :mapviz/AddMapvizDisplay "7bd51d7a9d8469fae51039cf79b96d10")


