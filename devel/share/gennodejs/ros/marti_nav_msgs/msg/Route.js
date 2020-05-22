// Auto-generated. Do not edit!

// (in-package marti_nav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoutePoint = require('./RoutePoint.js');
let std_msgs = _finder('std_msgs');
let marti_common_msgs = _finder('marti_common_msgs');

//-----------------------------------------------------------

class Route {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.route_points = null;
      this.properties = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('route_points')) {
        this.route_points = initObj.route_points
      }
      else {
        this.route_points = [];
      }
      if (initObj.hasOwnProperty('properties')) {
        this.properties = initObj.properties
      }
      else {
        this.properties = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Route
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [route_points]
    // Serialize the length for message field [route_points]
    bufferOffset = _serializer.uint32(obj.route_points.length, buffer, bufferOffset);
    obj.route_points.forEach((val) => {
      bufferOffset = RoutePoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [properties]
    // Serialize the length for message field [properties]
    bufferOffset = _serializer.uint32(obj.properties.length, buffer, bufferOffset);
    obj.properties.forEach((val) => {
      bufferOffset = marti_common_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Route
    let len;
    let data = new Route(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [route_points]
    // Deserialize array length for message field [route_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.route_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.route_points[i] = RoutePoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [properties]
    // Deserialize array length for message field [properties]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.properties = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.properties[i] = marti_common_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.route_points.forEach((val) => {
      length += RoutePoint.getMessageSize(val);
    });
    object.properties.forEach((val) => {
      length += marti_common_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_nav_msgs/Route';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '626dfe06202116afac99e6de9fa42b3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header                         header
    RoutePoint[]                   route_points
    marti_common_msgs/KeyValue[]   properties
    
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
    MSG: marti_nav_msgs/RoutePoint
    geometry_msgs/Pose           pose
    string                       id         # unique identifier for this point
    marti_common_msgs/KeyValue[] properties
    
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
    
    ================================================================================
    MSG: marti_common_msgs/KeyValue
    # An arbitrary key-value pair
    
    string key
    string value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Route(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.route_points !== undefined) {
      resolved.route_points = new Array(msg.route_points.length);
      for (let i = 0; i < resolved.route_points.length; ++i) {
        resolved.route_points[i] = RoutePoint.Resolve(msg.route_points[i]);
      }
    }
    else {
      resolved.route_points = []
    }

    if (msg.properties !== undefined) {
      resolved.properties = new Array(msg.properties.length);
      for (let i = 0; i < resolved.properties.length; ++i) {
        resolved.properties[i] = marti_common_msgs.msg.KeyValue.Resolve(msg.properties[i]);
      }
    }
    else {
      resolved.properties = []
    }

    return resolved;
    }
};

module.exports = Route;
