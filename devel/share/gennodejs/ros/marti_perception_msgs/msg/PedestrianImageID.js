// Auto-generated. Do not edit!

// (in-package marti_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PedestrianImageID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pixel_x = null;
      this.pixel_y = null;
      this.image_width = null;
      this.image_height = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pixel_x')) {
        this.pixel_x = initObj.pixel_x
      }
      else {
        this.pixel_x = 0;
      }
      if (initObj.hasOwnProperty('pixel_y')) {
        this.pixel_y = initObj.pixel_y
      }
      else {
        this.pixel_y = 0;
      }
      if (initObj.hasOwnProperty('image_width')) {
        this.image_width = initObj.image_width
      }
      else {
        this.image_width = 0;
      }
      if (initObj.hasOwnProperty('image_height')) {
        this.image_height = initObj.image_height
      }
      else {
        this.image_height = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PedestrianImageID
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pixel_x]
    bufferOffset = _serializer.int32(obj.pixel_x, buffer, bufferOffset);
    // Serialize message field [pixel_y]
    bufferOffset = _serializer.int32(obj.pixel_y, buffer, bufferOffset);
    // Serialize message field [image_width]
    bufferOffset = _serializer.int32(obj.image_width, buffer, bufferOffset);
    // Serialize message field [image_height]
    bufferOffset = _serializer.int32(obj.image_height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PedestrianImageID
    let len;
    let data = new PedestrianImageID(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pixel_x]
    data.pixel_x = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pixel_y]
    data.pixel_y = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [image_width]
    data.image_width = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [image_height]
    data.image_height = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_perception_msgs/PedestrianImageID';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91d4875ed8a841454974fa0ce176cc1e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int32 pixel_x
    int32 pixel_y
    int32 image_width	  # in pixels
    int32 image_height	# in pixels
    
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
    const resolved = new PedestrianImageID(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pixel_x !== undefined) {
      resolved.pixel_x = msg.pixel_x;
    }
    else {
      resolved.pixel_x = 0
    }

    if (msg.pixel_y !== undefined) {
      resolved.pixel_y = msg.pixel_y;
    }
    else {
      resolved.pixel_y = 0
    }

    if (msg.image_width !== undefined) {
      resolved.image_width = msg.image_width;
    }
    else {
      resolved.image_width = 0
    }

    if (msg.image_height !== undefined) {
      resolved.image_height = msg.image_height;
    }
    else {
      resolved.image_height = 0
    }

    return resolved;
    }
};

module.exports = PedestrianImageID;
