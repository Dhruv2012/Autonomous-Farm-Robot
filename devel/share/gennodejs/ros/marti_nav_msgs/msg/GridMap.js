// Auto-generated. Do not edit!

// (in-package marti_nav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GridMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.top_left = null;
      this.top_right = null;
      this.bottom_right = null;
      this.bottom_left = null;
      this.map_names = null;
      this.map_data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('top_left')) {
        this.top_left = initObj.top_left
      }
      else {
        this.top_left = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('top_right')) {
        this.top_right = initObj.top_right
      }
      else {
        this.top_right = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('bottom_right')) {
        this.bottom_right = initObj.bottom_right
      }
      else {
        this.bottom_right = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('bottom_left')) {
        this.bottom_left = initObj.bottom_left
      }
      else {
        this.bottom_left = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('map_names')) {
        this.map_names = initObj.map_names
      }
      else {
        this.map_names = [];
      }
      if (initObj.hasOwnProperty('map_data')) {
        this.map_data = initObj.map_data
      }
      else {
        this.map_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GridMap
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [top_left]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.top_left, buffer, bufferOffset);
    // Serialize message field [top_right]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.top_right, buffer, bufferOffset);
    // Serialize message field [bottom_right]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.bottom_right, buffer, bufferOffset);
    // Serialize message field [bottom_left]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.bottom_left, buffer, bufferOffset);
    // Serialize message field [map_names]
    bufferOffset = _arraySerializer.string(obj.map_names, buffer, bufferOffset, null);
    // Serialize message field [map_data]
    // Serialize the length for message field [map_data]
    bufferOffset = _serializer.uint32(obj.map_data.length, buffer, bufferOffset);
    obj.map_data.forEach((val) => {
      bufferOffset = sensor_msgs.msg.Image.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GridMap
    let len;
    let data = new GridMap(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [top_left]
    data.top_left = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [top_right]
    data.top_right = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [bottom_right]
    data.bottom_right = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [bottom_left]
    data.bottom_left = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_names]
    data.map_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [map_data]
    // Deserialize array length for message field [map_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.map_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.map_data[i] = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.map_names.forEach((val) => {
      length += 4 + val.length;
    });
    object.map_data.forEach((val) => {
      length += sensor_msgs.msg.Image.getMessageSize(val);
    });
    return length + 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_nav_msgs/GridMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b88254125f8a40bfc5628e3d7439242';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GridMap(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.top_left !== undefined) {
      resolved.top_left = geometry_msgs.msg.Point.Resolve(msg.top_left)
    }
    else {
      resolved.top_left = new geometry_msgs.msg.Point()
    }

    if (msg.top_right !== undefined) {
      resolved.top_right = geometry_msgs.msg.Point.Resolve(msg.top_right)
    }
    else {
      resolved.top_right = new geometry_msgs.msg.Point()
    }

    if (msg.bottom_right !== undefined) {
      resolved.bottom_right = geometry_msgs.msg.Point.Resolve(msg.bottom_right)
    }
    else {
      resolved.bottom_right = new geometry_msgs.msg.Point()
    }

    if (msg.bottom_left !== undefined) {
      resolved.bottom_left = geometry_msgs.msg.Point.Resolve(msg.bottom_left)
    }
    else {
      resolved.bottom_left = new geometry_msgs.msg.Point()
    }

    if (msg.map_names !== undefined) {
      resolved.map_names = msg.map_names;
    }
    else {
      resolved.map_names = []
    }

    if (msg.map_data !== undefined) {
      resolved.map_data = new Array(msg.map_data.length);
      for (let i = 0; i < resolved.map_data.length; ++i) {
        resolved.map_data[i] = sensor_msgs.msg.Image.Resolve(msg.map_data[i]);
      }
    }
    else {
      resolved.map_data = []
    }

    return resolved;
    }
};

module.exports = GridMap;
