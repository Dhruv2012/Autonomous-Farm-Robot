;; Auto-generated. Do not edit!


(when (boundp 'marti_nav_msgs::GridMap)
  (if (not (find-package "MARTI_NAV_MSGS"))
    (make-package "MARTI_NAV_MSGS"))
  (shadow 'GridMap (find-package "MARTI_NAV_MSGS")))
(unless (find-package "MARTI_NAV_MSGS::GRIDMAP")
  (make-package "MARTI_NAV_MSGS::GRIDMAP"))

(in-package "ROS")
;;//! \htmlinclude GridMap.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass marti_nav_msgs::GridMap
  :super ros::object
  :slots (_header _top_left _top_right _bottom_right _bottom_left _map_names _map_data ))

(defmethod marti_nav_msgs::GridMap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:top_left __top_left) (instance geometry_msgs::Point :init))
    ((:top_right __top_right) (instance geometry_msgs::Point :init))
    ((:bottom_right __bottom_right) (instance geometry_msgs::Point :init))
    ((:bottom_left __bottom_left) (instance geometry_msgs::Point :init))
    ((:map_names __map_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:map_data __map_data) (let (r) (dotimes (i 0) (push (instance sensor_msgs::Image :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _top_left __top_left)
   (setq _top_right __top_right)
   (setq _bottom_right __bottom_right)
   (setq _bottom_left __bottom_left)
   (setq _map_names __map_names)
   (setq _map_data __map_data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:top_left
   (&rest __top_left)
   (if (keywordp (car __top_left))
       (send* _top_left __top_left)
     (progn
       (if __top_left (setq _top_left (car __top_left)))
       _top_left)))
  (:top_right
   (&rest __top_right)
   (if (keywordp (car __top_right))
       (send* _top_right __top_right)
     (progn
       (if __top_right (setq _top_right (car __top_right)))
       _top_right)))
  (:bottom_right
   (&rest __bottom_right)
   (if (keywordp (car __bottom_right))
       (send* _bottom_right __bottom_right)
     (progn
       (if __bottom_right (setq _bottom_right (car __bottom_right)))
       _bottom_right)))
  (:bottom_left
   (&rest __bottom_left)
   (if (keywordp (car __bottom_left))
       (send* _bottom_left __bottom_left)
     (progn
       (if __bottom_left (setq _bottom_left (car __bottom_left)))
       _bottom_left)))
  (:map_names
   (&optional __map_names)
   (if __map_names (setq _map_names __map_names)) _map_names)
  (:map_data
   (&rest __map_data)
   (if (keywordp (car __map_data))
       (send* _map_data __map_data)
     (progn
       (if __map_data (setq _map_data (car __map_data)))
       _map_data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _top_left
    (send _top_left :serialization-length)
    ;; geometry_msgs/Point _top_right
    (send _top_right :serialization-length)
    ;; geometry_msgs/Point _bottom_right
    (send _bottom_right :serialization-length)
    ;; geometry_msgs/Point _bottom_left
    (send _bottom_left :serialization-length)
    ;; string[] _map_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _map_names)) 4
    ;; sensor_msgs/Image[] _map_data
    (apply #'+ (send-all _map_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _top_left
       (send _top_left :serialize s)
     ;; geometry_msgs/Point _top_right
       (send _top_right :serialize s)
     ;; geometry_msgs/Point _bottom_right
       (send _bottom_right :serialize s)
     ;; geometry_msgs/Point _bottom_left
       (send _bottom_left :serialize s)
     ;; string[] _map_names
     (write-long (length _map_names) s)
     (dolist (elem _map_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; sensor_msgs/Image[] _map_data
     (write-long (length _map_data) s)
     (dolist (elem _map_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _top_left
     (send _top_left :deserialize buf ptr-) (incf ptr- (send _top_left :serialization-length))
   ;; geometry_msgs/Point _top_right
     (send _top_right :deserialize buf ptr-) (incf ptr- (send _top_right :serialization-length))
   ;; geometry_msgs/Point _bottom_right
     (send _bottom_right :deserialize buf ptr-) (incf ptr- (send _bottom_right :serialization-length))
   ;; geometry_msgs/Point _bottom_left
     (send _bottom_left :deserialize buf ptr-) (incf ptr- (send _bottom_left :serialization-length))
   ;; string[] _map_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _map_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; sensor_msgs/Image[] _map_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_data (let (r) (dotimes (i n) (push (instance sensor_msgs::Image :init) r)) r))
     (dolist (elem- _map_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get marti_nav_msgs::GridMap :md5sum-) "3b88254125f8a40bfc5628e3d7439242")
(setf (get marti_nav_msgs::GridMap :datatype-) "marti_nav_msgs/GridMap")
(setf (get marti_nav_msgs::GridMap :definition-)
      "Header header

# Map extents in the header frame.
geometry_msgs/Point top_left
geometry_msgs/Point top_right
geometry_msgs/Point bottom_right
geometry_msgs/Point bottom_left

# Map data layers
string[]            map_names
sensor_msgs/Image[] map_data

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

")



(provide :marti_nav_msgs/GridMap "3b88254125f8a40bfc5628e3d7439242")


