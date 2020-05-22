// Auto-generated. Do not edit!

// (in-package marti_status_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ChronyTrackingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.reference = null;
      this.stratum = null;
      this.system_time_offset = null;
      this.last_offset = null;
      this.rms_offset = null;
      this.frequency_offset = null;
      this.residual_frequency = null;
      this.skew = null;
      this.root_delay = null;
      this.root_dispersion = null;
      this.update_interval = null;
      this.leap_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('reference')) {
        this.reference = initObj.reference
      }
      else {
        this.reference = '';
      }
      if (initObj.hasOwnProperty('stratum')) {
        this.stratum = initObj.stratum
      }
      else {
        this.stratum = 0;
      }
      if (initObj.hasOwnProperty('system_time_offset')) {
        this.system_time_offset = initObj.system_time_offset
      }
      else {
        this.system_time_offset = 0.0;
      }
      if (initObj.hasOwnProperty('last_offset')) {
        this.last_offset = initObj.last_offset
      }
      else {
        this.last_offset = 0.0;
      }
      if (initObj.hasOwnProperty('rms_offset')) {
        this.rms_offset = initObj.rms_offset
      }
      else {
        this.rms_offset = 0.0;
      }
      if (initObj.hasOwnProperty('frequency_offset')) {
        this.frequency_offset = initObj.frequency_offset
      }
      else {
        this.frequency_offset = 0.0;
      }
      if (initObj.hasOwnProperty('residual_frequency')) {
        this.residual_frequency = initObj.residual_frequency
      }
      else {
        this.residual_frequency = 0.0;
      }
      if (initObj.hasOwnProperty('skew')) {
        this.skew = initObj.skew
      }
      else {
        this.skew = 0.0;
      }
      if (initObj.hasOwnProperty('root_delay')) {
        this.root_delay = initObj.root_delay
      }
      else {
        this.root_delay = 0.0;
      }
      if (initObj.hasOwnProperty('root_dispersion')) {
        this.root_dispersion = initObj.root_dispersion
      }
      else {
        this.root_dispersion = 0.0;
      }
      if (initObj.hasOwnProperty('update_interval')) {
        this.update_interval = initObj.update_interval
      }
      else {
        this.update_interval = 0.0;
      }
      if (initObj.hasOwnProperty('leap_status')) {
        this.leap_status = initObj.leap_status
      }
      else {
        this.leap_status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChronyTrackingStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [reference]
    bufferOffset = _serializer.string(obj.reference, buffer, bufferOffset);
    // Serialize message field [stratum]
    bufferOffset = _serializer.int32(obj.stratum, buffer, bufferOffset);
    // Serialize message field [system_time_offset]
    bufferOffset = _serializer.float64(obj.system_time_offset, buffer, bufferOffset);
    // Serialize message field [last_offset]
    bufferOffset = _serializer.float64(obj.last_offset, buffer, bufferOffset);
    // Serialize message field [rms_offset]
    bufferOffset = _serializer.float64(obj.rms_offset, buffer, bufferOffset);
    // Serialize message field [frequency_offset]
    bufferOffset = _serializer.float32(obj.frequency_offset, buffer, bufferOffset);
    // Serialize message field [residual_frequency]
    bufferOffset = _serializer.float32(obj.residual_frequency, buffer, bufferOffset);
    // Serialize message field [skew]
    bufferOffset = _serializer.float32(obj.skew, buffer, bufferOffset);
    // Serialize message field [root_delay]
    bufferOffset = _serializer.float64(obj.root_delay, buffer, bufferOffset);
    // Serialize message field [root_dispersion]
    bufferOffset = _serializer.float64(obj.root_dispersion, buffer, bufferOffset);
    // Serialize message field [update_interval]
    bufferOffset = _serializer.float32(obj.update_interval, buffer, bufferOffset);
    // Serialize message field [leap_status]
    bufferOffset = _serializer.string(obj.leap_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChronyTrackingStatus
    let len;
    let data = new ChronyTrackingStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [reference]
    data.reference = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stratum]
    data.stratum = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [system_time_offset]
    data.system_time_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [last_offset]
    data.last_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rms_offset]
    data.rms_offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [frequency_offset]
    data.frequency_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [residual_frequency]
    data.residual_frequency = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [skew]
    data.skew = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [root_delay]
    data.root_delay = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [root_dispersion]
    data.root_dispersion = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [update_interval]
    data.update_interval = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [leap_status]
    data.leap_status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.reference.length;
    length += object.leap_status.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_status_msgs/ChronyTrackingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d4e25c769e04f542a792f47f82c3ccd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    string reference
    int32 stratum
    float64 system_time_offset
    float64 last_offset 
    float64 rms_offset
    float32 frequency_offset
    float32 residual_frequency
    float32 skew
    float64 root_delay
    float64 root_dispersion
    float32 update_interval
    
    string leap_status
    
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
    const resolved = new ChronyTrackingStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.reference !== undefined) {
      resolved.reference = msg.reference;
    }
    else {
      resolved.reference = ''
    }

    if (msg.stratum !== undefined) {
      resolved.stratum = msg.stratum;
    }
    else {
      resolved.stratum = 0
    }

    if (msg.system_time_offset !== undefined) {
      resolved.system_time_offset = msg.system_time_offset;
    }
    else {
      resolved.system_time_offset = 0.0
    }

    if (msg.last_offset !== undefined) {
      resolved.last_offset = msg.last_offset;
    }
    else {
      resolved.last_offset = 0.0
    }

    if (msg.rms_offset !== undefined) {
      resolved.rms_offset = msg.rms_offset;
    }
    else {
      resolved.rms_offset = 0.0
    }

    if (msg.frequency_offset !== undefined) {
      resolved.frequency_offset = msg.frequency_offset;
    }
    else {
      resolved.frequency_offset = 0.0
    }

    if (msg.residual_frequency !== undefined) {
      resolved.residual_frequency = msg.residual_frequency;
    }
    else {
      resolved.residual_frequency = 0.0
    }

    if (msg.skew !== undefined) {
      resolved.skew = msg.skew;
    }
    else {
      resolved.skew = 0.0
    }

    if (msg.root_delay !== undefined) {
      resolved.root_delay = msg.root_delay;
    }
    else {
      resolved.root_delay = 0.0
    }

    if (msg.root_dispersion !== undefined) {
      resolved.root_dispersion = msg.root_dispersion;
    }
    else {
      resolved.root_dispersion = 0.0
    }

    if (msg.update_interval !== undefined) {
      resolved.update_interval = msg.update_interval;
    }
    else {
      resolved.update_interval = 0.0
    }

    if (msg.leap_status !== undefined) {
      resolved.leap_status = msg.leap_status;
    }
    else {
      resolved.leap_status = ''
    }

    return resolved;
    }
};

module.exports = ChronyTrackingStatus;
