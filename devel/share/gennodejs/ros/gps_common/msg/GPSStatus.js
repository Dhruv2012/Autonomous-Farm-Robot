// Auto-generated. Do not edit!

// (in-package gps_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GPSStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.satellites_used = null;
      this.satellite_used_prn = null;
      this.satellites_visible = null;
      this.satellite_visible_prn = null;
      this.satellite_visible_z = null;
      this.satellite_visible_azimuth = null;
      this.satellite_visible_snr = null;
      this.status = null;
      this.motion_source = null;
      this.orientation_source = null;
      this.position_source = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('satellites_used')) {
        this.satellites_used = initObj.satellites_used
      }
      else {
        this.satellites_used = 0;
      }
      if (initObj.hasOwnProperty('satellite_used_prn')) {
        this.satellite_used_prn = initObj.satellite_used_prn
      }
      else {
        this.satellite_used_prn = [];
      }
      if (initObj.hasOwnProperty('satellites_visible')) {
        this.satellites_visible = initObj.satellites_visible
      }
      else {
        this.satellites_visible = 0;
      }
      if (initObj.hasOwnProperty('satellite_visible_prn')) {
        this.satellite_visible_prn = initObj.satellite_visible_prn
      }
      else {
        this.satellite_visible_prn = [];
      }
      if (initObj.hasOwnProperty('satellite_visible_z')) {
        this.satellite_visible_z = initObj.satellite_visible_z
      }
      else {
        this.satellite_visible_z = [];
      }
      if (initObj.hasOwnProperty('satellite_visible_azimuth')) {
        this.satellite_visible_azimuth = initObj.satellite_visible_azimuth
      }
      else {
        this.satellite_visible_azimuth = [];
      }
      if (initObj.hasOwnProperty('satellite_visible_snr')) {
        this.satellite_visible_snr = initObj.satellite_visible_snr
      }
      else {
        this.satellite_visible_snr = [];
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('motion_source')) {
        this.motion_source = initObj.motion_source
      }
      else {
        this.motion_source = 0;
      }
      if (initObj.hasOwnProperty('orientation_source')) {
        this.orientation_source = initObj.orientation_source
      }
      else {
        this.orientation_source = 0;
      }
      if (initObj.hasOwnProperty('position_source')) {
        this.position_source = initObj.position_source
      }
      else {
        this.position_source = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPSStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [satellites_used]
    bufferOffset = _serializer.uint16(obj.satellites_used, buffer, bufferOffset);
    // Serialize message field [satellite_used_prn]
    bufferOffset = _arraySerializer.int32(obj.satellite_used_prn, buffer, bufferOffset, null);
    // Serialize message field [satellites_visible]
    bufferOffset = _serializer.uint16(obj.satellites_visible, buffer, bufferOffset);
    // Serialize message field [satellite_visible_prn]
    bufferOffset = _arraySerializer.int32(obj.satellite_visible_prn, buffer, bufferOffset, null);
    // Serialize message field [satellite_visible_z]
    bufferOffset = _arraySerializer.int32(obj.satellite_visible_z, buffer, bufferOffset, null);
    // Serialize message field [satellite_visible_azimuth]
    bufferOffset = _arraySerializer.int32(obj.satellite_visible_azimuth, buffer, bufferOffset, null);
    // Serialize message field [satellite_visible_snr]
    bufferOffset = _arraySerializer.int32(obj.satellite_visible_snr, buffer, bufferOffset, null);
    // Serialize message field [status]
    bufferOffset = _serializer.int16(obj.status, buffer, bufferOffset);
    // Serialize message field [motion_source]
    bufferOffset = _serializer.uint16(obj.motion_source, buffer, bufferOffset);
    // Serialize message field [orientation_source]
    bufferOffset = _serializer.uint16(obj.orientation_source, buffer, bufferOffset);
    // Serialize message field [position_source]
    bufferOffset = _serializer.uint16(obj.position_source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPSStatus
    let len;
    let data = new GPSStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [satellites_used]
    data.satellites_used = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [satellite_used_prn]
    data.satellite_used_prn = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [satellites_visible]
    data.satellites_visible = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [satellite_visible_prn]
    data.satellite_visible_prn = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [satellite_visible_z]
    data.satellite_visible_z = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [satellite_visible_azimuth]
    data.satellite_visible_azimuth = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [satellite_visible_snr]
    data.satellite_visible_snr = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [status]
    data.status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [motion_source]
    data.motion_source = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [orientation_source]
    data.orientation_source = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [position_source]
    data.position_source = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.satellite_used_prn.length;
    length += 4 * object.satellite_visible_prn.length;
    length += 4 * object.satellite_visible_z.length;
    length += 4 * object.satellite_visible_azimuth.length;
    length += 4 * object.satellite_visible_snr.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_common/GPSStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '313baa8951fdd056c78bf61b1b07d249';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Satellites used in solution
    uint16 satellites_used # Number of satellites
    int32[] satellite_used_prn # PRN identifiers
    
    # Satellites visible
    uint16 satellites_visible
    int32[] satellite_visible_prn # PRN identifiers
    int32[] satellite_visible_z # Elevation of satellites
    int32[] satellite_visible_azimuth # Azimuth of satellites
    int32[] satellite_visible_snr # Signal-to-noise ratios (dB)
    
    # Measurement status
    int16 STATUS_NO_FIX=-1   # Unable to fix position
    int16 STATUS_FIX=0       # Normal fix
    int16 STATUS_SBAS_FIX=1  # Fixed using a satellite-based augmentation system
    int16 STATUS_GBAS_FIX=2  #          or a ground-based augmentation system
    int16 STATUS_DGPS_FIX=18 # Fixed with DGPS
    int16 STATUS_WAAS_FIX=33 # Fixed with WAAS
    int16 status
    
    uint16 SOURCE_NONE=0 # No information is available
    uint16 SOURCE_GPS=1 # Using standard GPS location [only valid for position_source]
    uint16 SOURCE_POINTS=2 # Motion/orientation fix is derived from successive points
    uint16 SOURCE_DOPPLER=4 # Motion is derived using the Doppler effect
    uint16 SOURCE_ALTIMETER=8 # Using an altimeter
    uint16 SOURCE_MAGNETIC=16 # Using magnetic sensors
    uint16 SOURCE_GYRO=32 # Using gyroscopes
    uint16 SOURCE_ACCEL=64 # Using accelerometers
    
    uint16 motion_source # Source for speed, climb and track
    uint16 orientation_source # Source for device orientation
    uint16 position_source # Source for position
    
    
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
    const resolved = new GPSStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.satellites_used !== undefined) {
      resolved.satellites_used = msg.satellites_used;
    }
    else {
      resolved.satellites_used = 0
    }

    if (msg.satellite_used_prn !== undefined) {
      resolved.satellite_used_prn = msg.satellite_used_prn;
    }
    else {
      resolved.satellite_used_prn = []
    }

    if (msg.satellites_visible !== undefined) {
      resolved.satellites_visible = msg.satellites_visible;
    }
    else {
      resolved.satellites_visible = 0
    }

    if (msg.satellite_visible_prn !== undefined) {
      resolved.satellite_visible_prn = msg.satellite_visible_prn;
    }
    else {
      resolved.satellite_visible_prn = []
    }

    if (msg.satellite_visible_z !== undefined) {
      resolved.satellite_visible_z = msg.satellite_visible_z;
    }
    else {
      resolved.satellite_visible_z = []
    }

    if (msg.satellite_visible_azimuth !== undefined) {
      resolved.satellite_visible_azimuth = msg.satellite_visible_azimuth;
    }
    else {
      resolved.satellite_visible_azimuth = []
    }

    if (msg.satellite_visible_snr !== undefined) {
      resolved.satellite_visible_snr = msg.satellite_visible_snr;
    }
    else {
      resolved.satellite_visible_snr = []
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.motion_source !== undefined) {
      resolved.motion_source = msg.motion_source;
    }
    else {
      resolved.motion_source = 0
    }

    if (msg.orientation_source !== undefined) {
      resolved.orientation_source = msg.orientation_source;
    }
    else {
      resolved.orientation_source = 0
    }

    if (msg.position_source !== undefined) {
      resolved.position_source = msg.position_source;
    }
    else {
      resolved.position_source = 0
    }

    return resolved;
    }
};

// Constants for message
GPSStatus.Constants = {
  STATUS_NO_FIX: -1,
  STATUS_FIX: 0,
  STATUS_SBAS_FIX: 1,
  STATUS_GBAS_FIX: 2,
  STATUS_DGPS_FIX: 18,
  STATUS_WAAS_FIX: 33,
  SOURCE_NONE: 0,
  SOURCE_GPS: 1,
  SOURCE_POINTS: 2,
  SOURCE_DOPPLER: 4,
  SOURCE_ALTIMETER: 8,
  SOURCE_MAGNETIC: 16,
  SOURCE_GYRO: 32,
  SOURCE_ACCEL: 64,
}

module.exports = GPSStatus;
