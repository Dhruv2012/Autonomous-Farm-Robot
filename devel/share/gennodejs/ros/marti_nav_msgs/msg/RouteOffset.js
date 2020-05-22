// Auto-generated. Do not edit!

// (in-package marti_nav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RoutePosition = require('./RoutePosition.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RouteOffset {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.relative_pose = null;
      this.route_position = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('relative_pose')) {
        this.relative_pose = initObj.relative_pose
      }
      else {
        this.relative_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('route_position')) {
        this.route_position = initObj.route_position
      }
      else {
        this.route_position = new RoutePosition();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RouteOffset
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [relative_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.relative_pose, buffer, bufferOffset);
    // Serialize message field [route_position]
    bufferOffset = RoutePosition.serialize(obj.route_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RouteOffset
    let len;
    let data = new RouteOffset(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_pose]
    data.relative_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [route_position]
    data.route_position = RoutePosition.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += RoutePosition.getMessageSize(object.route_position);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_nav_msgs/RouteOffset';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69208bbf68ef432cb1b3530d6fdda6cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Gives a position and orientation relative to a position on a route
    
    Header header                                 # only stamp used
    
    geometry_msgs/Pose relative_pose              # pose relative to position on route
    marti_nav_msgs/RoutePosition route_position   # position on route
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: marti_nav_msgs/RoutePosition
    # Position along route
    
    Header  header   # only stamp used
    string  route_id # unique ID of the corresponding route
    string  id       # unique ID of nearest point
    float32 distance # forward along route, in meters from point identified by id
                     # field (negative values indicate the distance is backward
                     # along the route)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RouteOffset(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.relative_pose !== undefined) {
      resolved.relative_pose = geometry_msgs.msg.Pose.Resolve(msg.relative_pose)
    }
    else {
      resolved.relative_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.route_position !== undefined) {
      resolved.route_position = RoutePosition.Resolve(msg.route_position)
    }
    else {
      resolved.route_position = new RoutePosition()
    }

    return resolved;
    }
};

module.exports = RouteOffset;
