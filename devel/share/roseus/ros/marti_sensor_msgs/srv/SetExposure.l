;; Auto-generated. Do not edit!


(when (boundp 'marti_sensor_msgs::SetExposure)
  (if (not (find-package "MARTI_SENSOR_MSGS"))
    (make-package "MARTI_SENSOR_MSGS"))
  (shadow 'SetExposure (find-package "MARTI_SENSOR_MSGS")))
(unless (find-package "MARTI_SENSOR_MSGS::SETEXPOSURE")
  (make-package "MARTI_SENSOR_MSGS::SETEXPOSURE"))
(unless (find-package "MARTI_SENSOR_MSGS::SETEXPOSUREREQUEST")
  (make-package "MARTI_SENSOR_MSGS::SETEXPOSUREREQUEST"))
(unless (find-package "MARTI_SENSOR_MSGS::SETEXPOSURERESPONSE")
  (make-package "MARTI_SENSOR_MSGS::SETEXPOSURERESPONSE"))

(in-package "ROS")





(defclass marti_sensor_msgs::SetExposureRequest
  :super ros::object
  :slots (_auto_exposure _time ))

(defmethod marti_sensor_msgs::SetExposureRequest
  (:init
   (&key
    ((:auto_exposure __auto_exposure) nil)
    ((:time __time) 0)
    )
   (send-super :init)
   (setq _auto_exposure __auto_exposure)
   (setq _time (round __time))
   self)
  (:auto_exposure
   (&optional __auto_exposure)
   (if __auto_exposure (setq _auto_exposure __auto_exposure)) _auto_exposure)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; bool _auto_exposure
    1
    ;; int64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _auto_exposure
       (if _auto_exposure (write-byte -1 s) (write-byte 0 s))
     ;; int64 _time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time) (= (length (_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time . bv) 0) 0) s)
              (write-long (ash (elt (_time . bv) 1) -1) s))
             ((and (class _time) (= (length (_time . bv)) 1)) ;; big1
              (write-long (elt (_time . bv) 0) s)
              (write-long (if (>= _time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time s)(write-long (if (>= _time 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _auto_exposure
     (setq _auto_exposure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _time
#+(or :alpha :irix6 :x86_64)
      (setf _time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass marti_sensor_msgs::SetExposureResponse
  :super ros::object
  :slots (_auto_exposure _time ))

(defmethod marti_sensor_msgs::SetExposureResponse
  (:init
   (&key
    ((:auto_exposure __auto_exposure) nil)
    ((:time __time) 0)
    )
   (send-super :init)
   (setq _auto_exposure __auto_exposure)
   (setq _time (round __time))
   self)
  (:auto_exposure
   (&optional __auto_exposure)
   (if __auto_exposure (setq _auto_exposure __auto_exposure)) _auto_exposure)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:serialization-length
   ()
   (+
    ;; bool _auto_exposure
    1
    ;; int64 _time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _auto_exposure
       (if _auto_exposure (write-byte -1 s) (write-byte 0 s))
     ;; int64 _time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time) (= (length (_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time . bv) 0) 0) s)
              (write-long (ash (elt (_time . bv) 1) -1) s))
             ((and (class _time) (= (length (_time . bv)) 1)) ;; big1
              (write-long (elt (_time . bv) 0) s)
              (write-long (if (>= _time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time s)(write-long (if (>= _time 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _auto_exposure
     (setq _auto_exposure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int64 _time
#+(or :alpha :irix6 :x86_64)
      (setf _time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass marti_sensor_msgs::SetExposure
  :super ros::object
  :slots ())

(setf (get marti_sensor_msgs::SetExposure :md5sum-) "37809854cb4a4ba55aeed0163f3e52bf")
(setf (get marti_sensor_msgs::SetExposure :datatype-) "marti_sensor_msgs/SetExposure")
(setf (get marti_sensor_msgs::SetExposure :request) marti_sensor_msgs::SetExposureRequest)
(setf (get marti_sensor_msgs::SetExposure :response) marti_sensor_msgs::SetExposureResponse)

(defmethod marti_sensor_msgs::SetExposureRequest
  (:response () (instance marti_sensor_msgs::SetExposureResponse :init)))

(setf (get marti_sensor_msgs::SetExposureRequest :md5sum-) "37809854cb4a4ba55aeed0163f3e52bf")
(setf (get marti_sensor_msgs::SetExposureRequest :datatype-) "marti_sensor_msgs/SetExposureRequest")
(setf (get marti_sensor_msgs::SetExposureRequest :definition-)
      "bool auto_exposure
int64 time
---
bool auto_exposure
int64 time

")

(setf (get marti_sensor_msgs::SetExposureResponse :md5sum-) "37809854cb4a4ba55aeed0163f3e52bf")
(setf (get marti_sensor_msgs::SetExposureResponse :datatype-) "marti_sensor_msgs/SetExposureResponse")
(setf (get marti_sensor_msgs::SetExposureResponse :definition-)
      "bool auto_exposure
int64 time
---
bool auto_exposure
int64 time

")



(provide :marti_sensor_msgs/SetExposure "37809854cb4a4ba55aeed0163f3e52bf")


