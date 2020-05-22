// Auto-generated. Do not edit!

// (in-package marti_nav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let marti_common_msgs = _finder('marti_common_msgs');

//-----------------------------------------------------------

class RoutePoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.id = null;
      this.properties = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
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
    // Serializes a message object of type RoutePoint
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [properties]
    // Serialize the length for message field [properties]
    bufferOffset = _serializer.uint32(obj.properties.length, buffer, bufferOffset);
    obj.properties.forEach((val) => {
      bufferOffset = marti_common_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoutePoint
    let len;
    let data = new RoutePoint(null);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
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
    length += object.id.length;
    object.properties.forEach((val) => {
      length += marti_common_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_nav_msgs/RoutePoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f1f627df35e7330c4ee0337ac3a4de9c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RoutePoint(null);
    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
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

module.exports = RoutePoint;
