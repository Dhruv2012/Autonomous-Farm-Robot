;; Auto-generated. Do not edit!


(when (boundp 'marti_sensor_msgs::DioRealTimeData)
  (if (not (find-package "MARTI_SENSOR_MSGS"))
    (make-package "MARTI_SENSOR_MSGS"))
  (shadow 'DioRealTimeData (find-package "MARTI_SENSOR_MSGS")))
(unless (find-package "MARTI_SENSOR_MSGS::DIOREALTIMEDATA")
  (make-package "MARTI_SENSOR_MSGS::DIOREALTIMEDATA"))

(in-package "ROS")
;;//! \htmlinclude DioRealTimeData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_sensor_msgs::DioRealTimeData
  :super ros::object
  :slots (_header _sample_frequency _latest_sample_time _sample_states _sample_times ))

(defmethod marti_sensor_msgs::DioRealTimeData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sample_frequency __sample_frequency) 0.0)
    ((:latest_sample_time __latest_sample_time) 0)
    ((:sample_states __sample_states) (make-array 0 :initial-element 0 :element-type :integer))
    ((:sample_times __sample_times) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _sample_frequency (float __sample_frequency))
   (setq _latest_sample_time (round __latest_sample_time))
   (setq _sample_states __sample_states)
   (setq _sample_times __sample_times)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sample_frequency
   (&optional __sample_frequency)
   (if __sample_frequency (setq _sample_frequency __sample_frequency)) _sample_frequency)
  (:latest_sample_time
   (&optional __latest_sample_time)
   (if __latest_sample_time (setq _latest_sample_time __latest_sample_time)) _latest_sample_time)
  (:sample_states
   (&optional __sample_states)
   (if __sample_states (setq _sample_states __sample_states)) _sample_states)
  (:sample_times
   (&optional __sample_times)
   (if __sample_times (setq _sample_times __sample_times)) _sample_times)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _sample_frequency
    8
    ;; uint64 _latest_sample_time
    8
    ;; uint16[] _sample_states
    (* 2    (length _sample_states)) 4
    ;; uint32[] _sample_times
    (* 4    (length _sample_times)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _sample_frequency
       (sys::poke _sample_frequency (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint64 _latest_sample_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _latest_sample_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _latest_sample_time) (= (length (_latest_sample_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_latest_sample_time . bv) 0) 0) s)
              (write-long (ash (elt (_latest_sample_time . bv) 1) -1) s))
             ((and (class _latest_sample_time) (= (length (_latest_sample_time . bv)) 1)) ;; big1
              (write-long (elt (_latest_sample_time . bv) 0) s)
              (write-long (if (>= _latest_sample_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _latest_sample_time s)(write-long (if (>= _latest_sample_time 0) 0 #xffffffff) s)))
     ;; uint16[] _sample_states
     (write-long (length _sample_states) s)
     (dotimes (i (length _sample_states))
       (write-word (elt _sample_states i) s)
       )
     ;; uint32[] _sample_times
     (write-long (length _sample_times) s)
     (dotimes (i (length _sample_times))
       (write-long (elt _sample_times i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _sample_frequency
     (setq _sample_frequency (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint64 _latest_sample_time
     
#+(or :alpha :irix6 :x86_64)
      (setf _latest_sample_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _latest_sample_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint16[] _sample_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sample_states (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sample_states i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint32[] _sample_times
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sample_times (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sample_times i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get marti_sensor_msgs::DioRealTimeData :md5sum-) "98eef69989f7d8b60307368e8e339ff4")
(setf (get marti_sensor_msgs::DioRealTimeData :datatype-) "marti_sensor_msgs/DioRealTimeData")
(setf (get marti_sensor_msgs::DioRealTimeData :definition-)
      "# Message for containing digital data obtained by a real-time DAQ.

Header header
# header contains the timestamp of when this data was obtained from
# the device.

float64 sample_frequency
# The sampling frequency [Hz] of the DAQ.

uint64 latest_sample_time
# The most recent time (in sampling clock ticks) that the port was
# sampled.

uint16[] sample_states
uint32[] sample_times
# DAQ data filtered to only contain changes in states.  sample_times[]
# is a list of clock ticks encoded as a (negative) offset from
# latest_sample_time (ex: clock_time[i] = latest_sample_time -
# sample_times[i]).  This encoding reduces the times from uint64 to
# uint32.  sample_states[] are the port states at the corresponding
# times.

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :marti_sensor_msgs/DioRealTimeData "98eef69989f7d8b60307368e8e339ff4")


