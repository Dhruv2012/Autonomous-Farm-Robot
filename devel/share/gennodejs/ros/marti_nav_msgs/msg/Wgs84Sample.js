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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Wgs84Sample {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.odom = null;
      this.wgs84 = null;
      this.wgs84_covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('odom')) {
        this.odom = initObj.odom
      }
      else {
        this.odom = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('wgs84')) {
        this.wgs84 = initObj.wgs84
      }
      else {
        this.wgs84 = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('wgs84_covariance')) {
        this.wgs84_covariance = initObj.wgs84_covariance
      }
      else {
        this.wgs84_covariance = new Array(9).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Wgs84Sample
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [odom]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.odom, buffer, bufferOffset);
    // Serialize message field [wgs84]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.wgs84, buffer, bufferOffset);
    // Check that the constant length array field [wgs84_covariance] has the right length
    if (obj.wgs84_covariance.length !== 9) {
      throw new Error('Unable to serialize array field wgs84_covariance - length must be 9')
    }
    // Serialize message field [wgs84_covariance]
    bufferOffset = _arraySerializer.float64(obj.wgs84_covariance, buffer, bufferOffset, 9);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Wgs84Sample
    let len;
    let data = new Wgs84Sample(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [odom]
    data.odom = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [wgs84]
    data.wgs84 = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [wgs84_covariance]
    data.wgs84_covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 120;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_nav_msgs/Wgs84Sample';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5241cb1ac52fc7a58f710c9a9774badc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains an absolute position measurement (in
    # spherical/WGS-84 coordinates) and the corresponding sensor
    # (e.g. antenna) location in a vehicle's relative odometry coordinate
    # frame.
    
    Header header
    # The header contains the /tf name of the relative odometry frame and
    # the timestamp of the measurement.
    
    geometry_msgs/Point odom
    # The position of the sample in the relative odometry frame.
    
    geometry_msgs/Point wgs84
    # The WGS84 measurement (x = longitude in decimal degrees, y =
    # latitude in decimal degrees, z = altitude over the reference
    # ellipsoid in meters)
    
    float64[9] wgs84_covariance
    # An estimate of WGS-84 measurement's covariance.
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Wgs84Sample(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.odom !== undefined) {
      resolved.odom = geometry_msgs.msg.Point.Resolve(msg.odom)
    }
    else {
      resolved.odom = new geometry_msgs.msg.Point()
    }

    if (msg.wgs84 !== undefined) {
      resolved.wgs84 = geometry_msgs.msg.Point.Resolve(msg.wgs84)
    }
    else {
      resolved.wgs84 = new geometry_msgs.msg.Point()
    }

    if (msg.wgs84_covariance !== undefined) {
      resolved.wgs84_covariance = msg.wgs84_covariance;
    }
    else {
      resolved.wgs84_covariance = new Array(9).fill(0)
    }

    return resolved;
    }
};

module.exports = Wgs84Sample;
