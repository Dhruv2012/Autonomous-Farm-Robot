// Auto-generated. Do not edit!

// (in-package marti_visualization_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TexturedMarker = require('./TexturedMarker.js');

//-----------------------------------------------------------

class TexturedMarkerArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.markers = null;
    }
    else {
      if (initObj.hasOwnProperty('markers')) {
        this.markers = initObj.markers
      }
      else {
        this.markers = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TexturedMarkerArray
    // Serialize message field [markers]
    // Serialize the length for message field [markers]
    bufferOffset = _serializer.uint32(obj.markers.length, buffer, bufferOffset);
    obj.markers.forEach((val) => {
      bufferOffset = TexturedMarker.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TexturedMarkerArray
    let len;
    let data = new TexturedMarkerArray(null);
    // Deserialize message field [markers]
    // Deserialize array length for message field [markers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.markers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.markers[i] = TexturedMarker.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.markers.forEach((val) => {
      length += TexturedMarker.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_visualization_msgs/TexturedMarkerArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a529a0eaa0a63d94d3445d26d3fe59a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    TexturedMarker[] markers
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TexturedMarkerArray(null);
    if (msg.markers !== undefined) {
      resolved.markers = new Array(msg.markers.length);
      for (let i = 0; i < resolved.markers.length; ++i) {
        resolved.markers[i] = TexturedMarker.Resolve(msg.markers[i]);
      }
    }
    else {
      resolved.markers = []
    }

    return resolved;
    }
};

module.exports = TexturedMarkerArray;
