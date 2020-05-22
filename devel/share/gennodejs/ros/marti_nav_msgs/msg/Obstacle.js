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

//-----------------------------------------------------------

class Obstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.pose = null;
      this.polygon = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Obstacle
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [polygon]
    // Serialize the length for message field [polygon]
    bufferOffset = _serializer.uint32(obj.polygon.length, buffer, bufferOffset);
    obj.polygon.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Obstacle
    let len;
    let data = new Obstacle(null);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [polygon]
    // Deserialize array length for message field [polygon]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.id.length;
    length += 24 * object.polygon.length;
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_nav_msgs/Obstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6379634b2f186de37a480e1f3f9b2e7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string id
    # Unique id for the obstacle or empty if not used.
    
    geometry_msgs/Pose pose
    # The pose of the origin of the obstacle.
    
    geometry_msgs/Point[] polygon
    # A list of points that define the obstacle's geometry in horizontal
    # plane relative to the obstacle's pose.  The polygon is implicitly
    # closed by a segment between the last and first points.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Obstacle(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.polygon !== undefined) {
      resolved.polygon = new Array(msg.polygon.length);
      for (let i = 0; i < resolved.polygon.length; ++i) {
        resolved.polygon[i] = geometry_msgs.msg.Point.Resolve(msg.polygon[i]);
      }
    }
    else {
      resolved.polygon = []
    }

    return resolved;
    }
};

module.exports = Obstacle;
