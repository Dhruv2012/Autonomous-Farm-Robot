// Auto-generated. Do not edit!

// (in-package mapviz.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let marti_common_msgs = _finder('marti_common_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class AddMapvizDisplayRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.type = null;
      this.draw_order = null;
      this.visible = null;
      this.properties = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('draw_order')) {
        this.draw_order = initObj.draw_order
      }
      else {
        this.draw_order = 0;
      }
      if (initObj.hasOwnProperty('visible')) {
        this.visible = initObj.visible
      }
      else {
        this.visible = false;
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
    // Serializes a message object of type AddMapvizDisplayRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [draw_order]
    bufferOffset = _serializer.int32(obj.draw_order, buffer, bufferOffset);
    // Serialize message field [visible]
    bufferOffset = _serializer.bool(obj.visible, buffer, bufferOffset);
    // Serialize message field [properties]
    // Serialize the length for message field [properties]
    bufferOffset = _serializer.uint32(obj.properties.length, buffer, bufferOffset);
    obj.properties.forEach((val) => {
      bufferOffset = marti_common_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddMapvizDisplayRequest
    let len;
    let data = new AddMapvizDisplayRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [draw_order]
    data.draw_order = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [visible]
    data.visible = _deserializer.bool(buffer, bufferOffset);
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
    length += object.name.length;
    length += object.type.length;
    object.properties.forEach((val) => {
      length += marti_common_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mapviz/AddMapvizDisplayRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd99db34575927545707e7081858716f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    string                        name
    string                        type
    
    int32                         draw_order
    
    
    
    
    
    
    
    bool                          visible
    
    marti_common_msgs/KeyValue[]  properties
    
    
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
    const resolved = new AddMapvizDisplayRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.draw_order !== undefined) {
      resolved.draw_order = msg.draw_order;
    }
    else {
      resolved.draw_order = 0
    }

    if (msg.visible !== undefined) {
      resolved.visible = msg.visible;
    }
    else {
      resolved.visible = false
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

class AddMapvizDisplayResponse {
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
    // Serializes a message object of type AddMapvizDisplayResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AddMapvizDisplayResponse
    let len;
    let data = new AddMapvizDisplayResponse(null);
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
    return 'mapviz/AddMapvizDisplayResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool   success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AddMapvizDisplayResponse(null);
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
  Request: AddMapvizDisplayRequest,
  Response: AddMapvizDisplayResponse,
  md5sum() { return '7bd51d7a9d8469fae51039cf79b96d10'; },
  datatype() { return 'mapviz/AddMapvizDisplay'; }
};
