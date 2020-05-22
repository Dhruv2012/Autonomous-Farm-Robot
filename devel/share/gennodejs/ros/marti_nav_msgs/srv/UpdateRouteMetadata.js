// Auto-generated. Do not edit!

// (in-package marti_nav_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoutePoint = require('../msg/RoutePoint.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateRouteMetadataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.route_guid = null;
      this.metadata_points = null;
    }
    else {
      if (initObj.hasOwnProperty('route_guid')) {
        this.route_guid = initObj.route_guid
      }
      else {
        this.route_guid = '';
      }
      if (initObj.hasOwnProperty('metadata_points')) {
        this.metadata_points = initObj.metadata_points
      }
      else {
        this.metadata_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateRouteMetadataRequest
    // Serialize message field [route_guid]
    bufferOffset = _serializer.string(obj.route_guid, buffer, bufferOffset);
    // Serialize message field [metadata_points]
    // Serialize the length for message field [metadata_points]
    bufferOffset = _serializer.uint32(obj.metadata_points.length, buffer, bufferOffset);
    obj.metadata_points.forEach((val) => {
      bufferOffset = RoutePoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateRouteMetadataRequest
    let len;
    let data = new UpdateRouteMetadataRequest(null);
    // Deserialize message field [route_guid]
    data.route_guid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [metadata_points]
    // Deserialize array length for message field [metadata_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.metadata_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.metadata_points[i] = RoutePoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.route_guid.length;
    object.metadata_points.forEach((val) => {
      length += RoutePoint.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'marti_nav_msgs/UpdateRouteMetadataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4326dd3985865ba6412643260ac9da6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    
    
    string route_guid
    marti_nav_msgs/RoutePoint[] metadata_points
    
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
    const resolved = new UpdateRouteMetadataRequest(null);
    if (msg.route_guid !== undefined) {
      resolved.route_guid = msg.route_guid;
    }
    else {
      resolved.route_guid = ''
    }

    if (msg.metadata_points !== undefined) {
      resolved.metadata_points = new Array(msg.metadata_points.length);
      for (let i = 0; i < resolved.metadata_points.length; ++i) {
        resolved.metadata_points[i] = RoutePoint.Resolve(msg.metadata_points[i]);
      }
    }
    else {
      resolved.metadata_points = []
    }

    return resolved;
    }
};

class UpdateRouteMetadataResponse {
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
    // Serializes a message object of type UpdateRouteMetadataResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateRouteMetadataResponse
    let len;
    let data = new UpdateRouteMetadataResponse(null);
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
    return 'marti_nav_msgs/UpdateRouteMetadataResponse';
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
    const resolved = new UpdateRouteMetadataResponse(null);
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
  Request: UpdateRouteMetadataRequest,
  Response: UpdateRouteMetadataResponse,
  md5sum() { return '680bbce4d545516006965d175dfcdb08'; },
  datatype() { return 'marti_nav_msgs/UpdateRouteMetadata'; }
};
