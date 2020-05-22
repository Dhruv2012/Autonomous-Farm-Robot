// Auto-generated. Do not edit!

// (in-package marti_can_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CanFrame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ID = null;
      this.msg_type = null;
      this.data_length = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('msg_type')) {
        this.msg_type = initObj.msg_type
      }
      else {
        this.msg_type = 0;
      }
      if (initObj.hasOwnProperty('data_length')) {
        this.data_length = initObj.data_length
      }
      else {
        this.data_length = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new Array(8).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CanFrame
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.uint32(obj.ID, buffer, bufferOffset);
    // Serialize message field [msg_type]
    bufferOffset = _serializer.uint8(obj.msg_type, buffer, bufferOffset);
    // Serialize message field [data_length]
    bufferOffset = _serializer.uint8(obj.data_length, buffer, bufferOffset);
    // Check that the constant length array field [data] has the right length
    if (obj.data.length !== 8) {
      throw new Error('Unable to serialize array field data - length must be 8')
    }
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, 8);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CanFrame
    let len;
    let data = new CanFrame(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [msg_type]
    data.msg_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data_length]
    data.data_length = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, 8)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_can_msgs/CanFrame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c60d055845d0e93bcf7d8d8dca084be7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # Header timestamp is the time when all messages were acquired
    # and synchronized.
    
    uint32 ID
    # CAN Message ID - This is 11 bits for standard frames or 29 bits for
    # extended frames.
    
    uint8 msg_type	  
    # CAN Message Type.  This should be one of the constants defined
    # below.  (Constants used to match pcan.h from Peak's driver.)
    uint8 MSGTYPE_STANDARD = 0
    uint8 MSGTYPE_RTR = 1
    uint8 MSGTYPE_EXTENDED = 2
    uint8 MSGTYPE_STATUS = 128
    
    uint8 data_length
    # Count of data bytes (0..8)
    
    uint8[8] data
    # Data bytes, up to 8
    
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
    const resolved = new CanFrame(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.msg_type !== undefined) {
      resolved.msg_type = msg.msg_type;
    }
    else {
      resolved.msg_type = 0
    }

    if (msg.data_length !== undefined) {
      resolved.data_length = msg.data_length;
    }
    else {
      resolved.data_length = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = new Array(8).fill(0)
    }

    return resolved;
    }
};

// Constants for message
CanFrame.Constants = {
  MSGTYPE_STANDARD: 0,
  MSGTYPE_RTR: 1,
  MSGTYPE_EXTENDED: 2,
  MSGTYPE_STATUS: 128,
}

module.exports = CanFrame;
