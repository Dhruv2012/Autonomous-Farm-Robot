// Auto-generated. Do not edit!

// (in-package marti_nav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LeadVehicle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.headwayDistance = null;
      this.speed = null;
      this.heading = null;
      this.xPos = null;
      this.yPos = null;
      this.classification = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('headwayDistance')) {
        this.headwayDistance = initObj.headwayDistance
      }
      else {
        this.headwayDistance = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('xPos')) {
        this.xPos = initObj.xPos
      }
      else {
        this.xPos = 0.0;
      }
      if (initObj.hasOwnProperty('yPos')) {
        this.yPos = initObj.yPos
      }
      else {
        this.yPos = 0.0;
      }
      if (initObj.hasOwnProperty('classification')) {
        this.classification = initObj.classification
      }
      else {
        this.classification = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LeadVehicle
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [headwayDistance]
    bufferOffset = _serializer.float32(obj.headwayDistance, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [xPos]
    bufferOffset = _serializer.float32(obj.xPos, buffer, bufferOffset);
    // Serialize message field [yPos]
    bufferOffset = _serializer.float32(obj.yPos, buffer, bufferOffset);
    // Serialize message field [classification]
    bufferOffset = _serializer.int8(obj.classification, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LeadVehicle
    let len;
    let data = new LeadVehicle(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [headwayDistance]
    data.headwayDistance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [xPos]
    data.xPos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yPos]
    data.yPos = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [classification]
    data.classification = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_nav_msgs/LeadVehicle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '123a04e085bfddd727efd0e68809c765';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float32 headwayDistance
    float32 speed
    float32 heading
    float32 xPos
    float32 yPos
    int8 classification
    int8 type
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LeadVehicle(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.headwayDistance !== undefined) {
      resolved.headwayDistance = msg.headwayDistance;
    }
    else {
      resolved.headwayDistance = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.xPos !== undefined) {
      resolved.xPos = msg.xPos;
    }
    else {
      resolved.xPos = 0.0
    }

    if (msg.yPos !== undefined) {
      resolved.yPos = msg.yPos;
    }
    else {
      resolved.yPos = 0.0
    }

    if (msg.classification !== undefined) {
      resolved.classification = msg.classification;
    }
    else {
      resolved.classification = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

module.exports = LeadVehicle;
