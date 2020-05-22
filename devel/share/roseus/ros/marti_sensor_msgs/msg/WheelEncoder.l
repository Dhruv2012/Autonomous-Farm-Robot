;; Auto-generated. Do not edit!


(when (boundp 'marti_sensor_msgs::WheelEncoder)
  (if (not (find-package "MARTI_SENSOR_MSGS"))
    (make-package "MARTI_SENSOR_MSGS"))
  (shadow 'WheelEncoder (find-package "MARTI_SENSOR_MSGS")))
(unless (find-package "MARTI_SENSOR_MSGS::WHEELENCODER")
  (make-package "MARTI_SENSOR_MSGS::WHEELENCODER"))

(in-package "ROS")
;;//! \htmlinclude WheelEncoder.msg.html


(defclass marti_sensor_msgs::WheelEncoder
  :super ros::object
  :slots (_frequency _directional _id ))

(defmethod marti_sensor_msgs::WheelEncoder
  (:init
   (&key
    ((:frequency __frequency) 0.0)
    ((:directional __directional) nil)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _frequency (float __frequency))
   (setq _directional __directional)
   (setq _id (round __id))
   self)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:directional
   (&optional __directional)
   (if __directional (setq _directional __directional)) _directional)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; float64 _frequency
    8
    ;; bool _directional
    1
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _frequency
       (sys::poke _frequency (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _directional
       (if _directional (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _frequency
     (setq _frequency (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _directional
     (setq _directional (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get marti_sensor_msgs::WheelEncoder :md5sum-) "18725be6b3a6d8aef45fc5b0d63b9a58")
(setf (get marti_sensor_msgs::WheelEncoder :datatype-) "marti_sensor_msgs/WheelEncoder")
(setf (get marti_sensor_msgs::WheelEncoder :definition-)
      "# Frequency from wheel encoder
#  If directional (below) is True, positive frequency means forward, and
#   negative frequency means backward.
#  If directional is False, frequency is non-negative and has no directional
#   information
float64 frequency

# True if frequency sign is significant; false else
bool directional

# ID of the wheel with which this data is associated
uint8 id
")



(provide :marti_sensor_msgs/WheelEncoder "18725be6b3a6d8aef45fc5b0d63b9a58")


