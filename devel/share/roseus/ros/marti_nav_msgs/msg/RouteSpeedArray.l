;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::RouteSpeedArray)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'RouteSpeedArray (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::ROUTESPEEDARRAY")
  (make-package "MARTI_NAV_MSGS::ROUTESPEEDARRAY"))

(in-package "ROS")
;;//! \htmlinclude RouteSpeedArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::RouteSpeedArray
  :super ros::object
  :slots (_header _speeds ))

(defmethod marti_nav_msgs::RouteSpeedArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:speeds __speeds) (let (r) (dotimes (i 0) (push (instance marti_nav_msgs::RouteSpeed :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _speeds __speeds)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:speeds
   (&rest __speeds)
   (if (keywordp (car __speeds))
       (send* _speeds __speeds)
     (progn
       (if __speeds (setq _speeds (car __speeds)))
       _speeds)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; marti_nav_msgs/RouteSpeed[] _speeds
    (apply #'+ (send-all _speeds :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; marti_nav_msgs/RouteSpeed[] _speeds
     (write-long (length _speeds) s)
     (dolist (elem _speeds)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; marti_nav_msgs/RouteSpeed[] _speeds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speeds (let (r) (dotimes (i n) (push (instance marti_nav_msgs::RouteSpeed :init) r)) r))
     (dolist (elem- _speeds)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get marti_nav_msgs::RouteSpeedArray :md5sum-) "c5b2e8db78eaab7eafdb3ecf8d4e017f")
(setf (get marti_nav_msgs::RouteSpeedArray :datatype-) "marti_nav_msgs/RouteSpeedArray")
(setf (get marti_nav_msgs::RouteSpeedArray :definition-)
      "# List of target speeds along a route.

Header header        # only stamp used

RouteSpeed[] speeds
# List of speeds along a route. The interpretation of the list is
# application dependent.  It may represent a list of unrelated speeds,
# a distance vs speed curve along a route, etc.


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

================================================================================
MSG: marti_nav_msgs/RouteSpeed
# Speed at a position along route

Header  header   # only stamp used
string  id       # unique ID of nearest point
float32 distance # forward along route, in meters from point identified by id
                 # field (negative values indicate the distance is backward
                 # along the route)
float32 speed    # desired speed at the specified position

")



(provide :marti_nav_msgs/RouteSpeedArray "c5b2e8db78eaab7eafdb3ecf8d4e017f")


