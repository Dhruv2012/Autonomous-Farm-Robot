// Auto-generated. Do not edit!

// (in-package marti_nav_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Route = require('../msg/Route.js');

//-----------------------------------------------------------

class GetRouteListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRouteListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRouteListRequest
    let len;
    let data = new GetRouteListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'marti_nav_msgs/GetRouteListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetRouteListRequest(null);
    return resolved;
    }
};

class GetRouteListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.routes = null;
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('routes')) {
        this.routes = initObj.routes
      }
      else {
        this.routes = [];
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetRouteListResponse
    // Serialize message field [routes]
    // Serialize the length for message field [routes]
    bufferOffset = _serializer.uint32(obj.routes.length, buffer, bufferOffset);
    obj.routes.forEach((val) => {
      bufferOffset = Route.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetRouteListResponse
    let len;
    let data = new GetRouteListResponse(null);
    // Deserialize message field [routes]
    // Deserialize array length for message field [routes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.routes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.routes[i] = Route.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.routes.forEach((val) => {
      length += Route.getMessageSize(val);
    });
    length += object.message.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'marti_nav_msgs/GetRouteListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24b443520442ddc540d0fd59f35403a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    marti_nav_msgs/Route[] routes
    
    bool success
    string message
    
    
    ================================================================================
    MSG: marti_nav_msgs/Route
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
    const resolved = new GetRouteListResponse(null);
    if (msg.routes !== undefined) {
      resolved.routes = new Array(msg.routes.length);
      for (let i = 0; i < resolved.routes.length; ++i) {
        resolved.routes[i] = Route.Resolve(msg.routes[i]);
      }
    }
    else {
      resolved.routes = []
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetRouteListRequest,
  Response: GetRouteListResponse,
  md5sum() { return '24b443520442ddc540d0fd59f35403a5'; },
  datatype() { return 'marti_nav_msgs/GetRouteList'; }
};
