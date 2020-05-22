// Auto-generated. Do not edit!

// (in-package marti_sensor_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetExposureRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.auto_exposure = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('auto_exposure')) {
        this.auto_exposure = initObj.auto_exposure
      }
      else {
        this.auto_exposure = false;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetExposureRequest
    // Serialize message field [auto_exposure]
    bufferOffset = _serializer.bool(obj.auto_exposure, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.int64(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetExposureRequest
    let len;
    let data = new SetExposureRequest(null);
    // Deserialize message field [auto_exposure]
    data.auto_exposure = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'marti_sensor_msgs/SetExposureRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a226e84ef4a44363d3b289536b8589a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool auto_exposure
    int64 time
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetExposureRequest(null);
    if (msg.auto_exposure !== undefined) {
      resolved.auto_exposure = msg.auto_exposure;
    }
    else {
      resolved.auto_exposure = false
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    return resolved;
    }
};

class SetExposureResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.auto_exposure = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('auto_exposure')) {
        this.auto_exposure = initObj.auto_exposure
      }
      else {
        this.auto_exposure = false;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetExposureResponse
    // Serialize message field [auto_exposure]
    bufferOffset = _serializer.bool(obj.auto_exposure, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.int64(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetExposureResponse
    let len;
    let data = new SetExposureResponse(null);
    // Deserialize message field [auto_exposure]
    data.auto_exposure = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'marti_sensor_msgs/SetExposureResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a226e84ef4a44363d3b289536b8589a5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool auto_exposure
    int64 time
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetExposureResponse(null);
    if (msg.auto_exposure !== undefined) {
      resolved.auto_exposure = msg.auto_exposure;
    }
    else {
      resolved.auto_exposure = false
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetExposureRequest,
  Response: SetExposureResponse,
  md5sum() { return '37809854cb4a4ba55aeed0163f3e52bf'; },
  datatype() { return 'marti_sensor_msgs/SetExposure'; }
};
