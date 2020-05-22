// Auto-generated. Do not edit!

// (in-package marti_nav_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Route = require('../msg/Route.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SaveRouteRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.guid = null;
      this.route = null;
      this.thumbnail = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('guid')) {
        this.guid = initObj.guid
      }
      else {
        this.guid = '';
      }
      if (initObj.hasOwnProperty('route')) {
        this.route = initObj.route
      }
      else {
        this.route = new Route();
      }
      if (initObj.hasOwnProperty('thumbnail')) {
        this.thumbnail = initObj.thumbnail
      }
      else {
        this.thumbnail = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveRouteRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [guid]
    bufferOffset = _serializer.string(obj.guid, buffer, bufferOffset);
    // Serialize message field [route]
    bufferOffset = Route.serialize(obj.route, buffer, bufferOffset);
    // Serialize message field [thumbnail]
    bufferOffset = _serializer.string(obj.thumbnail, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveRouteRequest
    let len;
    let data = new SaveRouteRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [guid]
    data.guid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [route]
    data.route = Route.deserialize(buffer, bufferOffset);
    // Deserialize message field [thumbnail]
    data.thumbnail = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.guid.length;
    length += Route.getMessageSize(object.route);
    length += object.thumbnail.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'marti_nav_msgs/SaveRouteRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd96b0f40cb18a4c24fe9c24bf524e777';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string guid
    marti_nav_msgs/Route route
    string thumbnail
    
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
    const resolved = new SaveRouteRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.guid !== undefined) {
      resolved.guid = msg.guid;
    }
    else {
      resolved.guid = ''
    }

    if (msg.route !== undefined) {
      resolved.route = Route.Resolve(msg.route)
    }
    else {
      resolved.route = new Route()
    }

    if (msg.thumbnail !== undefined) {
      resolved.thumbnail = msg.thumbnail;
    }
    else {
      resolved.thumbnail = ''
    }

    return resolved;
    }
};

class SaveRouteResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
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
    // Serializes a message object of type SaveRouteResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveRouteResponse
    let len;
    let data = new SaveRouteResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'marti_nav_msgs/SaveRouteResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveRouteResponse(null);
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
  Request: SaveRouteRequest,
  Response: SaveRouteResponse,
  md5sum() { return 'bf5efc6eabcf9ab3979d72995521ce7b'; },
  datatype() { return 'marti_nav_msgs/SaveRoute'; }
};
