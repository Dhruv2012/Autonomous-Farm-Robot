// Auto-generated. Do not edit!

// (in-package marti_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KeyValue = require('./KeyValue.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class KeyValueArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.items = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('items')) {
        this.items = initObj.items
      }
      else {
        this.items = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KeyValueArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [items]
    // Serialize the length for message field [items]
    bufferOffset = _serializer.uint32(obj.items.length, buffer, bufferOffset);
    obj.items.forEach((val) => {
      bufferOffset = KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KeyValueArray
    let len;
    let data = new KeyValueArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [items]
    // Deserialize array length for message field [items]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.items = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.items[i] = KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.items.forEach((val) => {
      length += KeyValue.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_common_msgs/KeyValueArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b303032d5c2c08f75f9a40a839cb16c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A generic message for publishing a list of key value pairs directly.
    
    Header header
    
    KeyValue[] items
    
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
    const resolved = new KeyValueArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.items !== undefined) {
      resolved.items = new Array(msg.items.length);
      for (let i = 0; i < resolved.items.length; ++i) {
        resolved.items[i] = KeyValue.Resolve(msg.items[i]);
      }
    }
    else {
      resolved.items = []
    }

    return resolved;
    }
};

module.exports = KeyValueArray;
