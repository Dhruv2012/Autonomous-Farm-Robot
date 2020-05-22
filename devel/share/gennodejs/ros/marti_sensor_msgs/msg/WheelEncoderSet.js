// Auto-generated. Do not edit!

// (in-package marti_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WheelEncoder = require('./WheelEncoder.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WheelEncoderSet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.encoders = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('encoders')) {
        this.encoders = initObj.encoders
      }
      else {
        this.encoders = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelEncoderSet
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [encoders]
    // Serialize the length for message field [encoders]
    bufferOffset = _serializer.uint32(obj.encoders.length, buffer, bufferOffset);
    obj.encoders.forEach((val) => {
      bufferOffset = WheelEncoder.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelEncoderSet
    let len;
    let data = new WheelEncoderSet(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [encoders]
    // Deserialize array length for message field [encoders]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.encoders = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.encoders[i] = WheelEncoder.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 10 * object.encoders.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_sensor_msgs/WheelEncoderSet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a1169b74ddf14d2e1ad1aa65311182d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    WheelEncoder[] encoders
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
    MSG: marti_sensor_msgs/WheelEncoder
    # Frequency from wheel encoder
    #  If directional (below) is True, positive frequency means forward, and
    #   negative frequency means backward.
    #  If directional is False, frequency is non-negative and has no directional
    #   information
    float64 frequency
    
    # True if frequency sign is significant; false else
    bool directional
    
    # ID of the wheel with which this data is associated
    uint8 id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelEncoderSet(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.encoders !== undefined) {
      resolved.encoders = new Array(msg.encoders.length);
      for (let i = 0; i < resolved.encoders.length; ++i) {
        resolved.encoders[i] = WheelEncoder.Resolve(msg.encoders[i]);
      }
    }
    else {
      resolved.encoders = []
    }

    return resolved;
    }
};

module.exports = WheelEncoderSet;
