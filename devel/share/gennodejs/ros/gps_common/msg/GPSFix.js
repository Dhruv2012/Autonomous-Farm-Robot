// Auto-generated. Do not edit!

// (in-package gps_common.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GPSStatus = require('./GPSStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GPSFix {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.status = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.track = null;
      this.speed = null;
      this.climb = null;
      this.pitch = null;
      this.roll = null;
      this.dip = null;
      this.time = null;
      this.gdop = null;
      this.pdop = null;
      this.hdop = null;
      this.vdop = null;
      this.tdop = null;
      this.err = null;
      this.err_horz = null;
      this.err_vert = null;
      this.err_track = null;
      this.err_speed = null;
      this.err_climb = null;
      this.err_time = null;
      this.err_pitch = null;
      this.err_roll = null;
      this.err_dip = null;
      this.position_covariance = null;
      this.position_covariance_type = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = new GPSStatus();
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('track')) {
        this.track = initObj.track
      }
      else {
        this.track = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('climb')) {
        this.climb = initObj.climb
      }
      else {
        this.climb = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('dip')) {
        this.dip = initObj.dip
      }
      else {
        this.dip = 0.0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
      if (initObj.hasOwnProperty('gdop')) {
        this.gdop = initObj.gdop
      }
      else {
        this.gdop = 0.0;
      }
      if (initObj.hasOwnProperty('pdop')) {
        this.pdop = initObj.pdop
      }
      else {
        this.pdop = 0.0;
      }
      if (initObj.hasOwnProperty('hdop')) {
        this.hdop = initObj.hdop
      }
      else {
        this.hdop = 0.0;
      }
      if (initObj.hasOwnProperty('vdop')) {
        this.vdop = initObj.vdop
      }
      else {
        this.vdop = 0.0;
      }
      if (initObj.hasOwnProperty('tdop')) {
        this.tdop = initObj.tdop
      }
      else {
        this.tdop = 0.0;
      }
      if (initObj.hasOwnProperty('err')) {
        this.err = initObj.err
      }
      else {
        this.err = 0.0;
      }
      if (initObj.hasOwnProperty('err_horz')) {
        this.err_horz = initObj.err_horz
      }
      else {
        this.err_horz = 0.0;
      }
      if (initObj.hasOwnProperty('err_vert')) {
        this.err_vert = initObj.err_vert
      }
      else {
        this.err_vert = 0.0;
      }
      if (initObj.hasOwnProperty('err_track')) {
        this.err_track = initObj.err_track
      }
      else {
        this.err_track = 0.0;
      }
      if (initObj.hasOwnProperty('err_speed')) {
        this.err_speed = initObj.err_speed
      }
      else {
        this.err_speed = 0.0;
      }
      if (initObj.hasOwnProperty('err_climb')) {
        this.err_climb = initObj.err_climb
      }
      else {
        this.err_climb = 0.0;
      }
      if (initObj.hasOwnProperty('err_time')) {
        this.err_time = initObj.err_time
      }
      else {
        this.err_time = 0.0;
      }
      if (initObj.hasOwnProperty('err_pitch')) {
        this.err_pitch = initObj.err_pitch
      }
      else {
        this.err_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('err_roll')) {
        this.err_roll = initObj.err_roll
      }
      else {
        this.err_roll = 0.0;
      }
      if (initObj.hasOwnProperty('err_dip')) {
        this.err_dip = initObj.err_dip
      }
      else {
        this.err_dip = 0.0;
      }
      if (initObj.hasOwnProperty('position_covariance')) {
        this.position_covariance = initObj.position_covariance
      }
      else {
        this.position_covariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('position_covariance_type')) {
        this.position_covariance_type = initObj.position_covariance_type
      }
      else {
        this.position_covariance_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPSFix
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = GPSStatus.serialize(obj.status, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [track]
    bufferOffset = _serializer.float64(obj.track, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [climb]
    bufferOffset = _serializer.float64(obj.climb, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [dip]
    bufferOffset = _serializer.float64(obj.dip, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    // Serialize message field [gdop]
    bufferOffset = _serializer.float64(obj.gdop, buffer, bufferOffset);
    // Serialize message field [pdop]
    bufferOffset = _serializer.float64(obj.pdop, buffer, bufferOffset);
    // Serialize message field [hdop]
    bufferOffset = _serializer.float64(obj.hdop, buffer, bufferOffset);
    // Serialize message field [vdop]
    bufferOffset = _serializer.float64(obj.vdop, buffer, bufferOffset);
    // Serialize message field [tdop]
    bufferOffset = _serializer.float64(obj.tdop, buffer, bufferOffset);
    // Serialize message field [err]
    bufferOffset = _serializer.float64(obj.err, buffer, bufferOffset);
    // Serialize message field [err_horz]
    bufferOffset = _serializer.float64(obj.err_horz, buffer, bufferOffset);
    // Serialize message field [err_vert]
    bufferOffset = _serializer.float64(obj.err_vert, buffer, bufferOffset);
    // Serialize message field [err_track]
    bufferOffset = _serializer.float64(obj.err_track, buffer, bufferOffset);
    // Serialize message field [err_speed]
    bufferOffset = _serializer.float64(obj.err_speed, buffer, bufferOffset);
    // Serialize message field [err_climb]
    bufferOffset = _serializer.float64(obj.err_climb, buffer, bufferOffset);
    // Serialize message field [err_time]
    bufferOffset = _serializer.float64(obj.err_time, buffer, bufferOffset);
    // Serialize message field [err_pitch]
    bufferOffset = _serializer.float64(obj.err_pitch, buffer, bufferOffset);
    // Serialize message field [err_roll]
    bufferOffset = _serializer.float64(obj.err_roll, buffer, bufferOffset);
    // Serialize message field [err_dip]
    bufferOffset = _serializer.float64(obj.err_dip, buffer, bufferOffset);
    // Check that the constant length array field [position_covariance] has the right length
    if (obj.position_covariance.length !== 9) {
      throw new Error('Unable to serialize array field position_covariance - length must be 9')
    }
    // Serialize message field [position_covariance]
    bufferOffset = _arraySerializer.float64(obj.position_covariance, buffer, bufferOffset, 9);
    // Serialize message field [position_covariance_type]
    bufferOffset = _serializer.uint8(obj.position_covariance_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPSFix
    let len;
    let data = new GPSFix(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = GPSStatus.deserialize(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [track]
    data.track = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [climb]
    data.climb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dip]
    data.dip = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gdop]
    data.gdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pdop]
    data.pdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [hdop]
    data.hdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vdop]
    data.vdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tdop]
    data.tdop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err]
    data.err = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_horz]
    data.err_horz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_vert]
    data.err_vert = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_track]
    data.err_track = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_speed]
    data.err_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_climb]
    data.err_climb = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_time]
    data.err_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_pitch]
    data.err_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_roll]
    data.err_roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [err_dip]
    data.err_dip = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_covariance]
    data.position_covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [position_covariance_type]
    data.position_covariance_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += GPSStatus.getMessageSize(object.status);
    return length + 273;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_common/GPSFix';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3db3d0a7bc53054c67c528af84710b70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # A more complete GPS fix to supplement sensor_msgs/NavSatFix.
    Header header
    
    GPSStatus status
    
    # Latitude (degrees). Positive is north of equator; negative is south.
    float64 latitude
    
    # Longitude (degrees). Positive is east of prime meridian, negative west.
    float64 longitude
    
    # Altitude (meters). Positive is above reference (e.g., sea level).
    float64 altitude
    
    # Direction (degrees from north)
    float64 track
    
    # Ground speed (meters/second)
    float64 speed
    
    # Vertical speed (meters/second)
    float64 climb
    
    # Device orientation (units in degrees)
    float64 pitch
    float64 roll
    float64 dip
    
    # GPS time
    float64 time
    
    ## Dilution of precision; Xdop<=0 means the value is unknown
    
    # Total (positional-temporal) dilution of precision
    float64 gdop
    
    # Positional (3D) dilution of precision
    float64 pdop
    
    # Horizontal dilution of precision
    float64 hdop
    
    # Vertical dilution of precision
    float64 vdop
    
    # Temporal dilution of precision
    float64 tdop
    
    ## Uncertainty of measurement, 95% confidence
    
    # Spherical position uncertainty (meters) [epe]
    float64 err
    
    # Horizontal position uncertainty (meters) [eph]
    float64 err_horz
    
    # Vertical position uncertainty (meters) [epv]
    float64 err_vert
    
    # Track uncertainty (degrees) [epd]
    float64 err_track
    
    # Ground speed uncertainty (meters/second) [eps]
    float64 err_speed
    
    # Vertical speed uncertainty (meters/second) [epc]
    float64 err_climb
    
    # Temporal uncertainty [ept]
    float64 err_time
    
    # Orientation uncertainty (degrees)
    float64 err_pitch
    float64 err_roll
    float64 err_dip
    
    # Position covariance [m^2] defined relative to a tangential plane
    # through the reported position. The components are East, North, and
    # Up (ENU), in row-major order.
    
    float64[9] position_covariance
    
    uint8 COVARIANCE_TYPE_UNKNOWN = 0
    uint8 COVARIANCE_TYPE_APPROXIMATED = 1
    uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
    uint8 COVARIANCE_TYPE_KNOWN = 3
    
    uint8 position_covariance_type
    
    
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
    MSG: gps_common/GPSStatus
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GPSFix(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = GPSStatus.Resolve(msg.status)
    }
    else {
      resolved.status = new GPSStatus()
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.track !== undefined) {
      resolved.track = msg.track;
    }
    else {
      resolved.track = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.climb !== undefined) {
      resolved.climb = msg.climb;
    }
    else {
      resolved.climb = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.dip !== undefined) {
      resolved.dip = msg.dip;
    }
    else {
      resolved.dip = 0.0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    if (msg.gdop !== undefined) {
      resolved.gdop = msg.gdop;
    }
    else {
      resolved.gdop = 0.0
    }

    if (msg.pdop !== undefined) {
      resolved.pdop = msg.pdop;
    }
    else {
      resolved.pdop = 0.0
    }

    if (msg.hdop !== undefined) {
      resolved.hdop = msg.hdop;
    }
    else {
      resolved.hdop = 0.0
    }

    if (msg.vdop !== undefined) {
      resolved.vdop = msg.vdop;
    }
    else {
      resolved.vdop = 0.0
    }

    if (msg.tdop !== undefined) {
      resolved.tdop = msg.tdop;
    }
    else {
      resolved.tdop = 0.0
    }

    if (msg.err !== undefined) {
      resolved.err = msg.err;
    }
    else {
      resolved.err = 0.0
    }

    if (msg.err_horz !== undefined) {
      resolved.err_horz = msg.err_horz;
    }
    else {
      resolved.err_horz = 0.0
    }

    if (msg.err_vert !== undefined) {
      resolved.err_vert = msg.err_vert;
    }
    else {
      resolved.err_vert = 0.0
    }

    if (msg.err_track !== undefined) {
      resolved.err_track = msg.err_track;
    }
    else {
      resolved.err_track = 0.0
    }

    if (msg.err_speed !== undefined) {
      resolved.err_speed = msg.err_speed;
    }
    else {
      resolved.err_speed = 0.0
    }

    if (msg.err_climb !== undefined) {
      resolved.err_climb = msg.err_climb;
    }
    else {
      resolved.err_climb = 0.0
    }

    if (msg.err_time !== undefined) {
      resolved.err_time = msg.err_time;
    }
    else {
      resolved.err_time = 0.0
    }

    if (msg.err_pitch !== undefined) {
      resolved.err_pitch = msg.err_pitch;
    }
    else {
      resolved.err_pitch = 0.0
    }

    if (msg.err_roll !== undefined) {
      resolved.err_roll = msg.err_roll;
    }
    else {
      resolved.err_roll = 0.0
    }

    if (msg.err_dip !== undefined) {
      resolved.err_dip = msg.err_dip;
    }
    else {
      resolved.err_dip = 0.0
    }

    if (msg.position_covariance !== undefined) {
      resolved.position_covariance = msg.position_covariance;
    }
    else {
      resolved.position_covariance = new Array(9).fill(0)
    }

    if (msg.position_covariance_type !== undefined) {
      resolved.position_covariance_type = msg.position_covariance_type;
    }
    else {
      resolved.position_covariance_type = 0
    }

    return resolved;
    }
};

// Constants for message
GPSFix.Constants = {
  COVARIANCE_TYPE_UNKNOWN: 0,
  COVARIANCE_TYPE_APPROXIMATED: 1,
  COVARIANCE_TYPE_DIAGONAL_KNOWN: 2,
  COVARIANCE_TYPE_KNOWN: 3,
}

module.exports = GPSFix;
