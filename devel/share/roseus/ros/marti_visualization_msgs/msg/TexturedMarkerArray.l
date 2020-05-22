;; Auto-generated. Do not edit!


(when (boundp 'marti_visualization_msgs::TexturedMarkerArray)
  (if (not (find-package "MARTI_VISUALIZATION_MSGS"))
    (make-package "MARTI_VISUALIZATION_MSGS"))
  (shadow 'TexturedMarkerArray (find-package "MARTI_VISUALIZATION_MSGS")))
(unless (find-package "MARTI_VISUALIZATION_MSGS::TEXTUREDMARKERARRAY")
  (make-package "MARTI_VISUALIZATION_MSGS::TEXTUREDMARKERARRAY"))

(in-package "ROS")
;;//! \htmlinclude TexturedMarkerArray.msg.html


(defclass marti_visualization_msgs::TexturedMarkerArray
  :super ros::object
  :slots (_markers ))

(defmethod marti_visualization_msgs::TexturedMarkerArray
  (:init
   (&key
    ((:markers __markers) (let (r) (dotimes (i 0) (push (instance marti_visualization_msgs::TexturedMarker :init) r)) r))
    )
   (send-super :init)
   (setq _markers __markers)
   self)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; marti_visualization_msgs/TexturedMarker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; marti_visualization_msgs/TexturedMarker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; marti_visualization_msgs/TexturedMarker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance marti_visualization_msgs::TexturedMarker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get marti_visualization_msgs::TexturedMarkerArray :md5sum-) "9a529a0eaa0a63d94d3445d26d3fe59a")
(setf (get marti_visualization_msgs::TexturedMarkerArray :datatype-) "marti_visualization_msgs/TexturedMarkerArray")
(setf (get marti_visualization_msgs::TexturedMarkerArray :definition-)
      "TexturedMarker[] markers

================================================================================
MSG: marti_visualization_msgs/TexturedMarker
uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2

Header              header

string              ns           # Namespace to place this object in... used in
                                 # conjunction with id to create a unique name
                                 # for the object.

int32               id
int32               action       # 0 add/modify an object, 2 deletes an object

duration            lifetime     # How long the object should last before being
                                 # automatically deleted.  0 means forever

sensor_msgs/Image   image
geometry_msgs/Pose  pose         # The pose of the image center with respect to
                                 # the header frame.

float64             resolution   # The pixel scale in meters.

float32             alpha        # The overall alpha transparency to display the
                                 # marker with.

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



(provide :marti_visualization_msgs/TexturedMarkerArray "9a529a0eaa0a63d94d3445d26d3fe59a")


