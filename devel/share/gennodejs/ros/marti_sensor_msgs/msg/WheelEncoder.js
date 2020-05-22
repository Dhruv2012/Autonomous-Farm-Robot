// Auto-generated. Do not edit!

// (in-package marti_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WheelEncoder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frequency = null;
      this.directional = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0.0;
      }
      if (initObj.hasOwnProperty('directional')) {
        this.directional = initObj.directional
      }
      else {
        this.directional = false;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelEncoder
    // Serialize message field [frequency]
    bufferOffset = _serializer.float64(obj.frequency, buffer, bufferOffset);
    // Serialize message field [directional]
    bufferOffset = _serializer.bool(obj.directional, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelEncoder
    let len;
    let data = new WheelEncoder(null);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [directional]
    data.directional = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_sensor_msgs/WheelEncoder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18725be6b3a6d8aef45fc5b0d63b9a58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new WheelEncoder(null);
    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0.0
    }

    if (msg.directional !== undefined) {
      resolved.directional = msg.directional;
    }
    else {
      resolved.directional = false
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

module.exports = WheelEncoder;
