// Auto-generated. Do not edit!

// (in-package marti_sensor_msgs.msg)


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

class DifferentialMeasurement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.base_frame_id = null;
      this.baseline_length = null;
      this.baseline_length_variance = null;
      this.heading = null;
      this.heading_variance = null;
      this.pitch = null;
      this.pitch_variance = null;
      this.roll = null;
      this.roll_variance = null;
      this.position = null;
      this.position_covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('base_frame_id')) {
        this.base_frame_id = initObj.base_frame_id
      }
      else {
        this.base_frame_id = '';
      }
      if (initObj.hasOwnProperty('baseline_length')) {
        this.baseline_length = initObj.baseline_length
      }
      else {
        this.baseline_length = 0.0;
      }
      if (initObj.hasOwnProperty('baseline_length_variance')) {
        this.baseline_length_variance = initObj.baseline_length_variance
      }
      else {
        this.baseline_length_variance = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('heading_variance')) {
        this.heading_variance = initObj.heading_variance
      }
      else {
        this.heading_variance = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_variance')) {
        this.pitch_variance = initObj.pitch_variance
      }
      else {
        this.pitch_variance = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('roll_variance')) {
        this.roll_variance = initObj.roll_variance
      }
      else {
        this.roll_variance = 0.0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('position_covariance')) {
        this.position_covariance = initObj.position_covariance
      }
      else {
        this.position_covariance = new Array(9).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DifferentialMeasurement
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [base_frame_id]
    bufferOffset = _serializer.string(obj.base_frame_id, buffer, bufferOffset);
    // Serialize message field [baseline_length]
    bufferOffset = _serializer.float64(obj.baseline_length, buffer, bufferOffset);
    // Serialize message field [baseline_length_variance]
    bufferOffset = _serializer.float64(obj.baseline_length_variance, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [heading_variance]
    bufferOffset = _serializer.float64(obj.heading_variance, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [pitch_variance]
    bufferOffset = _serializer.float64(obj.pitch_variance, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [roll_variance]
    bufferOffset = _serializer.float64(obj.roll_variance, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.position, buffer, bufferOffset);
    // Check that the constant length array field [position_covariance] has the right length
    if (obj.position_covariance.length !== 9) {
      throw new Error('Unable to serialize array field position_covariance - length must be 9')
    }
    // Serialize message field [position_covariance]
    bufferOffset = _arraySerializer.float64(obj.position_covariance, buffer, bufferOffset, 9);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DifferentialMeasurement
    let len;
    let data = new DifferentialMeasurement(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [base_frame_id]
    data.base_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [baseline_length]
    data.baseline_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [baseline_length_variance]
    data.baseline_length_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_variance]
    data.heading_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_variance]
    data.pitch_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_variance]
    data.roll_variance = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [position_covariance]
    data.position_covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.base_frame_id.length;
    return length + 164;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_sensor_msgs/DifferentialMeasurement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e59a00b1eeea864eec73f05dd359752';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A differential measurement between two places in the world
    #  Usually used with RTK-gps setups
    
    Header  header           # The time and location where this measurement is taken from
    string  base_frame_id    # The location we are measuring relative to
    
    float64 baseline_length  # Distance in meters between the two locations
    float64 baseline_length_variance # set > 1e14 to mark as invalid
    float64 heading          # Heading in degrees of the relative position vector
    float64 heading_variance # set > 1e14 to mark as invalid
    float64 pitch            # Pitch in degrees of the relative position vector
    float64 pitch_variance   # set > 1e14 to mark as invalid
    float64 roll             # Roll in degrees of the relative position vector
    float64 roll_variance    # set > 1e14 to mark as invalid
    
    geometry_msgs/Vector3 position  # position measurement between this point and our reference location
                                    # coordinates are given in ENU meters
    float64[9] position_covariance  # Covariance for the position measurement
                           # set > 1e14 to mark as invalid
    
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
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new DifferentialMeasurement(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.base_frame_id !== undefined) {
      resolved.base_frame_id = msg.base_frame_id;
    }
    else {
      resolved.base_frame_id = ''
    }

    if (msg.baseline_length !== undefined) {
      resolved.baseline_length = msg.baseline_length;
    }
    else {
      resolved.baseline_length = 0.0
    }

    if (msg.baseline_length_variance !== undefined) {
      resolved.baseline_length_variance = msg.baseline_length_variance;
    }
    else {
      resolved.baseline_length_variance = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.heading_variance !== undefined) {
      resolved.heading_variance = msg.heading_variance;
    }
    else {
      resolved.heading_variance = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.pitch_variance !== undefined) {
      resolved.pitch_variance = msg.pitch_variance;
    }
    else {
      resolved.pitch_variance = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.roll_variance !== undefined) {
      resolved.roll_variance = msg.roll_variance;
    }
    else {
      resolved.roll_variance = 0.0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Vector3.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Vector3()
    }

    if (msg.position_covariance !== undefined) {
      resolved.position_covariance = msg.position_covariance;
    }
    else {
      resolved.position_covariance = new Array(9).fill(0)
    }

    return resolved;
    }
};

module.exports = DifferentialMeasurement;
