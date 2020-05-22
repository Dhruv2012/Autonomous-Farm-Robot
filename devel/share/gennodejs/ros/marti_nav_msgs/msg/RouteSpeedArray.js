// Auto-generated. Do not edit!

// (in-package marti_nav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RouteSpeed = require('./RouteSpeed.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RouteSpeedArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.speeds = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('speeds')) {
        this.speeds = initObj.speeds
      }
      else {
        this.speeds = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouteSpeedArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [speeds]
    // Serialize the length for message field [speeds]
    bufferOffset = _serializer.uint32(obj.speeds.length, buffer, bufferOffset);
    obj.speeds.forEach((val) => {
      bufferOffset = RouteSpeed.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouteSpeedArray
    let len;
    let data = new RouteSpeedArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [speeds]
    // Deserialize array length for message field [speeds]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.speeds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.speeds[i] = RouteSpeed.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.speeds.forEach((val) => {
      length += RouteSpeed.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_nav_msgs/RouteSpeedArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5b2e8db78eaab7eafdb3ecf8d4e017f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # List of target speeds along a route.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RouteSpeedArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.speeds !== undefined) {
      resolved.speeds = new Array(msg.speeds.length);
      for (let i = 0; i < resolved.speeds.length; ++i) {
        resolved.speeds[i] = RouteSpeed.Resolve(msg.speeds[i]);
      }
    }
    else {
      resolved.speeds = []
    }

    return resolved;
    }
};

module.exports = RouteSpeedArray;
