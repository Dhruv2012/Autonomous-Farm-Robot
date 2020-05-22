;; Auto-generated. Do not edit!


(when (boundp 'marti_visualization_msgs::TexturedMarker)
  (if (not (find-package "MARTI_VISUALIZATION_MSGS"))
    (make-package "MARTI_VISUALIZATION_MSGS"))
  (shadow 'TexturedMarker (find-package "MARTI_VISUALIZATION_MSGS")))
(unless (find-package "MARTI_VISUALIZATION_MSGS::TEXTUREDMARKER")
  (make-package "MARTI_VISUALIZATION_MSGS::TEXTUREDMARKER"))

(in-package "ROS")
;;//! \htmlinclude TexturedMarker.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*ADD*" (find-package "MARTI_VISUALIZATION_MSGS::TEXTUREDMARKER"))
(shadow '*ADD* (find-package "MARTI_VISUALIZATION_MSGS::TEXTUREDMARKER"))
(defconstant marti_visualization_msgs::TexturedMarker::*ADD* 0)
(intern "*MODIFY*" (find-package "MARTI_VISUALIZATION_MSGS::TEXTUREDMARKER"))
(shadow '*MODIFY* (find-package "MARTI_VISUALIZATION_MSGS::TEXTUREDMARKER"))
(defconstant marti_visualization_msgs::TexturedMarker::*MODIFY* 0)
(intern "*DELETE*" (find-package "MARTI_VISUALIZATION_MSGS::TEXTUREDMARKER"))
(shadow '*DELETE* (find-package "MARTI_VISUALIZATION_MSGS::TEXTUREDMARKER"))
(defconstant marti_visualization_msgs::TexturedMarker::*DELETE* 2)
(defclass marti_visualization_msgs::TexturedMarker
  :super ros::object
  :slots (_header _ns _id _action _lifetime _image _pose _resolution _alpha ))

(defmethod marti_visualization_msgs::TexturedMarker
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ns __ns) "")
    ((:id __id) 0)
    ((:action __action) 0)
    ((:lifetime __lifetime) (instance ros::time :init))
    ((:image __image) (instance sensor_msgs::Image :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:resolution __resolution) 0.0)
    ((:alpha __alpha) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _ns (string __ns))
   (setq _id (round __id))
   (setq _action (round __action))
   (setq _lifetime __lifetime)
   (setq _image __image)
   (setq _pose __pose)
   (setq _resolution (float __resolution))
   (setq _alpha (float __alpha))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:lifetime
   (&optional __lifetime)
   (if __lifetime (setq _lifetime __lifetime)) _lifetime)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:alpha
   (&optional __alpha)
   (if __alpha (setq _alpha __alpha)) _alpha)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _ns
    4 (length _ns)
    ;; int32 _id
    4
    ;; int32 _action
    4
    ;; duration _lifetime
    8
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _resolution
    8
    ;; float32 _alpha
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _ns
       (write-long (length _ns) s) (princ _ns s)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _action
       (write-long _action s)
     ;; duration _lifetime
       (write-long (send _lifetime :sec) s) (write-long (send _lifetime :nsec) s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _alpha
       (sys::poke _alpha (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _ns
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ns (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _action
     (setq _action (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _lifetime
     (send _lifetime :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _lifetime :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _resolution
     (setq _resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _alpha
     (setq _alpha (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get marti_visualization_msgs::TexturedMarker :md5sum-) "cabc14f2922415c46794a05046c577fc")
(setf (get marti_visualization_msgs::TexturedMarker :datatype-) "marti_visualization_msgs/TexturedMarker")
(setf (get marti_visualization_msgs::TexturedMarker :definition-)
      "uint8 ADD=0
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



(provide :marti_visualization_msgs/TexturedMarker "cabc14f2922415c46794a05046c577fc")


