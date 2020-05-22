// Auto-generated. Do not edit!

// (in-package marti_nav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PathPlanning {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.segment_type = null;
      this.length = null;
      this.start_speed = null;
      this.end_speed = null;
      this.startx = null;
      this.starty = null;
      this.endx = null;
      this.endy = null;
      this.theta0 = null;
      this.a1 = null;
      this.a2 = null;
      this.k0 = null;
      this.c1 = null;
      this.c2 = null;
      this.behavior = null;
      this.creep = null;
      this.acc = null;
      this.reverse = null;
      this.vehicle_track = null;
      this.transmitted = null;
      this.auxTransmitted = null;
      this.theta_end = null;
      this.k_end = null;
      this.seg_len = null;
      this.speed_limit = null;
      this.max_error = null;
      this.max_smooth = null;
      this.max_curv = null;
      this.possible_points = null;
      this.bExitSegment = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('segment_type')) {
        this.segment_type = initObj.segment_type
      }
      else {
        this.segment_type = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('start_speed')) {
        this.start_speed = initObj.start_speed
      }
      else {
        this.start_speed = 0.0;
      }
      if (initObj.hasOwnProperty('end_speed')) {
        this.end_speed = initObj.end_speed
      }
      else {
        this.end_speed = 0.0;
      }
      if (initObj.hasOwnProperty('startx')) {
        this.startx = initObj.startx
      }
      else {
        this.startx = 0.0;
      }
      if (initObj.hasOwnProperty('starty')) {
        this.starty = initObj.starty
      }
      else {
        this.starty = 0.0;
      }
      if (initObj.hasOwnProperty('endx')) {
        this.endx = initObj.endx
      }
      else {
        this.endx = 0.0;
      }
      if (initObj.hasOwnProperty('endy')) {
        this.endy = initObj.endy
      }
      else {
        this.endy = 0.0;
      }
      if (initObj.hasOwnProperty('theta0')) {
        this.theta0 = initObj.theta0
      }
      else {
        this.theta0 = 0.0;
      }
      if (initObj.hasOwnProperty('a1')) {
        this.a1 = initObj.a1
      }
      else {
        this.a1 = 0.0;
      }
      if (initObj.hasOwnProperty('a2')) {
        this.a2 = initObj.a2
      }
      else {
        this.a2 = 0.0;
      }
      if (initObj.hasOwnProperty('k0')) {
        this.k0 = initObj.k0
      }
      else {
        this.k0 = 0.0;
      }
      if (initObj.hasOwnProperty('c1')) {
        this.c1 = initObj.c1
      }
      else {
        this.c1 = 0.0;
      }
      if (initObj.hasOwnProperty('c2')) {
        this.c2 = initObj.c2
      }
      else {
        this.c2 = 0.0;
      }
      if (initObj.hasOwnProperty('behavior')) {
        this.behavior = initObj.behavior
      }
      else {
        this.behavior = 0;
      }
      if (initObj.hasOwnProperty('creep')) {
        this.creep = initObj.creep
      }
      else {
        this.creep = 0;
      }
      if (initObj.hasOwnProperty('acc')) {
        this.acc = initObj.acc
      }
      else {
        this.acc = 0;
      }
      if (initObj.hasOwnProperty('reverse')) {
        this.reverse = initObj.reverse
      }
      else {
        this.reverse = 0;
      }
      if (initObj.hasOwnProperty('vehicle_track')) {
        this.vehicle_track = initObj.vehicle_track
      }
      else {
        this.vehicle_track = 0;
      }
      if (initObj.hasOwnProperty('transmitted')) {
        this.transmitted = initObj.transmitted
      }
      else {
        this.transmitted = false;
      }
      if (initObj.hasOwnProperty('auxTransmitted')) {
        this.auxTransmitted = initObj.auxTransmitted
      }
      else {
        this.auxTransmitted = false;
      }
      if (initObj.hasOwnProperty('theta_end')) {
        this.theta_end = initObj.theta_end
      }
      else {
        this.theta_end = 0.0;
      }
      if (initObj.hasOwnProperty('k_end')) {
        this.k_end = initObj.k_end
      }
      else {
        this.k_end = 0.0;
      }
      if (initObj.hasOwnProperty('seg_len')) {
        this.seg_len = initObj.seg_len
      }
      else {
        this.seg_len = 0;
      }
      if (initObj.hasOwnProperty('speed_limit')) {
        this.speed_limit = initObj.speed_limit
      }
      else {
        this.speed_limit = 0.0;
      }
      if (initObj.hasOwnProperty('max_error')) {
        this.max_error = initObj.max_error
      }
      else {
        this.max_error = 0.0;
      }
      if (initObj.hasOwnProperty('max_smooth')) {
        this.max_smooth = initObj.max_smooth
      }
      else {
        this.max_smooth = 0.0;
      }
      if (initObj.hasOwnProperty('max_curv')) {
        this.max_curv = initObj.max_curv
      }
      else {
        this.max_curv = 0.0;
      }
      if (initObj.hasOwnProperty('possible_points')) {
        this.possible_points = initObj.possible_points
      }
      else {
        this.possible_points = 0;
      }
      if (initObj.hasOwnProperty('bExitSegment')) {
        this.bExitSegment = initObj.bExitSegment
      }
      else {
        this.bExitSegment = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathPlanning
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [segment_type]
    bufferOffset = _serializer.int32(obj.segment_type, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [start_speed]
    bufferOffset = _serializer.float32(obj.start_speed, buffer, bufferOffset);
    // Serialize message field [end_speed]
    bufferOffset = _serializer.float32(obj.end_speed, buffer, bufferOffset);
    // Serialize message field [startx]
    bufferOffset = _serializer.float32(obj.startx, buffer, bufferOffset);
    // Serialize message field [starty]
    bufferOffset = _serializer.float32(obj.starty, buffer, bufferOffset);
    // Serialize message field [endx]
    bufferOffset = _serializer.float32(obj.endx, buffer, bufferOffset);
    // Serialize message field [endy]
    bufferOffset = _serializer.float32(obj.endy, buffer, bufferOffset);
    // Serialize message field [theta0]
    bufferOffset = _serializer.float32(obj.theta0, buffer, bufferOffset);
    // Serialize message field [a1]
    bufferOffset = _serializer.float32(obj.a1, buffer, bufferOffset);
    // Serialize message field [a2]
    bufferOffset = _serializer.float32(obj.a2, buffer, bufferOffset);
    // Serialize message field [k0]
    bufferOffset = _serializer.float32(obj.k0, buffer, bufferOffset);
    // Serialize message field [c1]
    bufferOffset = _serializer.float32(obj.c1, buffer, bufferOffset);
    // Serialize message field [c2]
    bufferOffset = _serializer.float32(obj.c2, buffer, bufferOffset);
    // Serialize message field [behavior]
    bufferOffset = _serializer.int32(obj.behavior, buffer, bufferOffset);
    // Serialize message field [creep]
    bufferOffset = _serializer.int32(obj.creep, buffer, bufferOffset);
    // Serialize message field [acc]
    bufferOffset = _serializer.int32(obj.acc, buffer, bufferOffset);
    // Serialize message field [reverse]
    bufferOffset = _serializer.int32(obj.reverse, buffer, bufferOffset);
    // Serialize message field [vehicle_track]
    bufferOffset = _serializer.int32(obj.vehicle_track, buffer, bufferOffset);
    // Serialize message field [transmitted]
    bufferOffset = _serializer.bool(obj.transmitted, buffer, bufferOffset);
    // Serialize message field [auxTransmitted]
    bufferOffset = _serializer.bool(obj.auxTransmitted, buffer, bufferOffset);
    // Serialize message field [theta_end]
    bufferOffset = _serializer.float32(obj.theta_end, buffer, bufferOffset);
    // Serialize message field [k_end]
    bufferOffset = _serializer.float32(obj.k_end, buffer, bufferOffset);
    // Serialize message field [seg_len]
    bufferOffset = _serializer.int32(obj.seg_len, buffer, bufferOffset);
    // Serialize message field [speed_limit]
    bufferOffset = _serializer.float32(obj.speed_limit, buffer, bufferOffset);
    // Serialize message field [max_error]
    bufferOffset = _serializer.float32(obj.max_error, buffer, bufferOffset);
    // Serialize message field [max_smooth]
    bufferOffset = _serializer.float32(obj.max_smooth, buffer, bufferOffset);
    // Serialize message field [max_curv]
    bufferOffset = _serializer.float32(obj.max_curv, buffer, bufferOffset);
    // Serialize message field [possible_points]
    bufferOffset = _serializer.int32(obj.possible_points, buffer, bufferOffset);
    // Serialize message field [bExitSegment]
    bufferOffset = _serializer.bool(obj.bExitSegment, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathPlanning
    let len;
    let data = new PathPlanning(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [segment_type]
    data.segment_type = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [start_speed]
    data.start_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [end_speed]
    data.end_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [startx]
    data.startx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [starty]
    data.starty = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [endx]
    data.endx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [endy]
    data.endy = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta0]
    data.theta0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a1]
    data.a1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [a2]
    data.a2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [k0]
    data.k0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c1]
    data.c1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c2]
    data.c2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [behavior]
    data.behavior = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [creep]
    data.creep = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [acc]
    data.acc = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reverse]
    data.reverse = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [vehicle_track]
    data.vehicle_track = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [transmitted]
    data.transmitted = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [auxTransmitted]
    data.auxTransmitted = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [theta_end]
    data.theta_end = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [k_end]
    data.k_end = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [seg_len]
    data.seg_len = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed_limit]
    data.speed_limit = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_error]
    data.max_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_smooth]
    data.max_smooth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_curv]
    data.max_curv = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [possible_points]
    data.possible_points = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bExitSegment]
    data.bExitSegment = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 111;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_nav_msgs/PathPlanning';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '275fd723a6af7fd7f102a3f07eca0829';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    int32   segment_type    # Type of path segment
    float32 length          # Length of path segment
    float32 start_speed     # Desired speed at start of path segment
    float32 end_speed       # Desired speed at end of path segment
    float32 startx          # Starting x-coordinate of the vehicle
    float32 starty          # Starting y-coordinate of the vehicle
    float32 endx            # Ending x-coordinate of the vehicle
    float32 endy            # Ending y-coordinate of the vehicle
    float32 theta0          # theta0 (constant) parameter for initial heading
    float32 a1              # a1 (linear) parameter for the x-y track
    float32 a2              # a2 (quadratric) parameter for the x-y track
    float32 k0              # k0 (constant) parameter for the curvature
    float32 c1              # c1 (linear) parameter for the curvature
    float32 c2              # c2 (quadratic) parameter for the curvature
    int32 behavior          # Type of behavior for the segment
    int32 creep             # Whether we should be in creep mode of not (0-No, 1-Yes)
    int32 acc               # Whether ACC Override is on (0-Normal ACC, 1-Override ACC)
    int32 reverse           # Whether we should be in reverse or not (0-No, 1-Yes)
    int32 vehicle_track     # Whether we are tracking a vehicle (0-No, 1-Yes)
    
    # The following items are used in Intelligence, but won't be transmitted with
    # the segments to C&C
    
    bool transmitted        # Flag to indicate whether the path segment has been
                            # transmitted
    
    bool auxTransmitted
    
    float32 theta_end       # End heading (provided explicitly)
    float32 k_end           # End curvature
    int32 seg_len           # Number of route points used to calculate the segment
    float32 speed_limit     # Minimum speed of route points used (comes from MDF or -1)
    
    # Other variables
    float32 max_error
    float32 max_smooth
    float32 max_curv
    int32 possible_points
    bool bExitSegment
    
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
    const resolved = new PathPlanning(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.segment_type !== undefined) {
      resolved.segment_type = msg.segment_type;
    }
    else {
      resolved.segment_type = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.start_speed !== undefined) {
      resolved.start_speed = msg.start_speed;
    }
    else {
      resolved.start_speed = 0.0
    }

    if (msg.end_speed !== undefined) {
      resolved.end_speed = msg.end_speed;
    }
    else {
      resolved.end_speed = 0.0
    }

    if (msg.startx !== undefined) {
      resolved.startx = msg.startx;
    }
    else {
      resolved.startx = 0.0
    }

    if (msg.starty !== undefined) {
      resolved.starty = msg.starty;
    }
    else {
      resolved.starty = 0.0
    }

    if (msg.endx !== undefined) {
      resolved.endx = msg.endx;
    }
    else {
      resolved.endx = 0.0
    }

    if (msg.endy !== undefined) {
      resolved.endy = msg.endy;
    }
    else {
      resolved.endy = 0.0
    }

    if (msg.theta0 !== undefined) {
      resolved.theta0 = msg.theta0;
    }
    else {
      resolved.theta0 = 0.0
    }

    if (msg.a1 !== undefined) {
      resolved.a1 = msg.a1;
    }
    else {
      resolved.a1 = 0.0
    }

    if (msg.a2 !== undefined) {
      resolved.a2 = msg.a2;
    }
    else {
      resolved.a2 = 0.0
    }

    if (msg.k0 !== undefined) {
      resolved.k0 = msg.k0;
    }
    else {
      resolved.k0 = 0.0
    }

    if (msg.c1 !== undefined) {
      resolved.c1 = msg.c1;
    }
    else {
      resolved.c1 = 0.0
    }

    if (msg.c2 !== undefined) {
      resolved.c2 = msg.c2;
    }
    else {
      resolved.c2 = 0.0
    }

    if (msg.behavior !== undefined) {
      resolved.behavior = msg.behavior;
    }
    else {
      resolved.behavior = 0
    }

    if (msg.creep !== undefined) {
      resolved.creep = msg.creep;
    }
    else {
      resolved.creep = 0
    }

    if (msg.acc !== undefined) {
      resolved.acc = msg.acc;
    }
    else {
      resolved.acc = 0
    }

    if (msg.reverse !== undefined) {
      resolved.reverse = msg.reverse;
    }
    else {
      resolved.reverse = 0
    }

    if (msg.vehicle_track !== undefined) {
      resolved.vehicle_track = msg.vehicle_track;
    }
    else {
      resolved.vehicle_track = 0
    }

    if (msg.transmitted !== undefined) {
      resolved.transmitted = msg.transmitted;
    }
    else {
      resolved.transmitted = false
    }

    if (msg.auxTransmitted !== undefined) {
      resolved.auxTransmitted = msg.auxTransmitted;
    }
    else {
      resolved.auxTransmitted = false
    }

    if (msg.theta_end !== undefined) {
      resolved.theta_end = msg.theta_end;
    }
    else {
      resolved.theta_end = 0.0
    }

    if (msg.k_end !== undefined) {
      resolved.k_end = msg.k_end;
    }
    else {
      resolved.k_end = 0.0
    }

    if (msg.seg_len !== undefined) {
      resolved.seg_len = msg.seg_len;
    }
    else {
      resolved.seg_len = 0
    }

    if (msg.speed_limit !== undefined) {
      resolved.speed_limit = msg.speed_limit;
    }
    else {
      resolved.speed_limit = 0.0
    }

    if (msg.max_error !== undefined) {
      resolved.max_error = msg.max_error;
    }
    else {
      resolved.max_error = 0.0
    }

    if (msg.max_smooth !== undefined) {
      resolved.max_smooth = msg.max_smooth;
    }
    else {
      resolved.max_smooth = 0.0
    }

    if (msg.max_curv !== undefined) {
      resolved.max_curv = msg.max_curv;
    }
    else {
      resolved.max_curv = 0.0
    }

    if (msg.possible_points !== undefined) {
      resolved.possible_points = msg.possible_points;
    }
    else {
      resolved.possible_points = 0
    }

    if (msg.bExitSegment !== undefined) {
      resolved.bExitSegment = msg.bExitSegment;
    }
    else {
      resolved.bExitSegment = false
    }

    return resolved;
    }
};

module.exports = PathPlanning;
