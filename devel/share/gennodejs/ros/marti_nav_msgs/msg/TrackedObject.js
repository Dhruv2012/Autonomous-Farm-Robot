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

class TrackedObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.pose = null;
      this.velocity = null;
      this.linear_acceleration = null;
      this.linear_acceleration_covariance = null;
      this.polygon = null;
      this.length = null;
      this.length_quality = null;
      this.width = null;
      this.width_quality = null;
      this.classification = null;
      this.classification_quality = null;
      this.existence_probability = null;
      this.age_duration = null;
      this.prediction_duration = null;
      this.active = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.TwistWithCovariance();
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('linear_acceleration_covariance')) {
        this.linear_acceleration_covariance = initObj.linear_acceleration_covariance
      }
      else {
        this.linear_acceleration_covariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = [];
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('length_quality')) {
        this.length_quality = initObj.length_quality
      }
      else {
        this.length_quality = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('width_quality')) {
        this.width_quality = initObj.width_quality
      }
      else {
        this.width_quality = 0.0;
      }
      if (initObj.hasOwnProperty('classification')) {
        this.classification = initObj.classification
      }
      else {
        this.classification = 0;
      }
      if (initObj.hasOwnProperty('classification_quality')) {
        this.classification_quality = initObj.classification_quality
      }
      else {
        this.classification_quality = 0.0;
      }
      if (initObj.hasOwnProperty('existence_probability')) {
        this.existence_probability = initObj.existence_probability
      }
      else {
        this.existence_probability = 0.0;
      }
      if (initObj.hasOwnProperty('age_duration')) {
        this.age_duration = initObj.age_duration
      }
      else {
        this.age_duration = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('prediction_duration')) {
        this.prediction_duration = initObj.prediction_duration
      }
      else {
        this.prediction_duration = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('active')) {
        this.active = initObj.active
      }
      else {
        this.active = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackedObject
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint16(obj.id, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.TwistWithCovariance.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [linear_acceleration]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Check that the constant length array field [linear_acceleration_covariance] has the right length
    if (obj.linear_acceleration_covariance.length !== 9) {
      throw new Error('Unable to serialize array field linear_acceleration_covariance - length must be 9')
    }
    // Serialize message field [linear_acceleration_covariance]
    bufferOffset = _arraySerializer.float64(obj.linear_acceleration_covariance, buffer, bufferOffset, 9);
    // Serialize message field [polygon]
    // Serialize the length for message field [polygon]
    bufferOffset = _serializer.uint32(obj.polygon.length, buffer, bufferOffset);
    obj.polygon.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [length_quality]
    bufferOffset = _serializer.float32(obj.length_quality, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [width_quality]
    bufferOffset = _serializer.float32(obj.width_quality, buffer, bufferOffset);
    // Serialize message field [classification]
    bufferOffset = _serializer.uint8(obj.classification, buffer, bufferOffset);
    // Serialize message field [classification_quality]
    bufferOffset = _serializer.float32(obj.classification_quality, buffer, bufferOffset);
    // Serialize message field [existence_probability]
    bufferOffset = _serializer.float32(obj.existence_probability, buffer, bufferOffset);
    // Serialize message field [age_duration]
    bufferOffset = _serializer.duration(obj.age_duration, buffer, bufferOffset);
    // Serialize message field [prediction_duration]
    bufferOffset = _serializer.duration(obj.prediction_duration, buffer, bufferOffset);
    // Serialize message field [active]
    bufferOffset = _serializer.bool(obj.active, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackedObject
    let len;
    let data = new TrackedObject(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.TwistWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_covariance]
    data.linear_acceleration_covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [polygon]
    // Deserialize array length for message field [polygon]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygon = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygon[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [length_quality]
    data.length_quality = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width_quality]
    data.width_quality = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [classification]
    data.classification = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [classification_quality]
    data.classification_quality = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [existence_probability]
    data.existence_probability = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [age_duration]
    data.age_duration = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [prediction_duration]
    data.prediction_duration = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [active]
    data.active = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.polygon.length;
    return length + 824;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_nav_msgs/TrackedObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbb29999f8b089f4f41612b25a8b7540';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 VEHICLE=0
    uint8 PEDESTRIAN=1
    uint8 UNKNOWN=255
    
    Header header  # Frame and timestamp
    uint16 id      # Id
    
    geometry_msgs/PoseWithCovariance pose      # Pose in the header frame.
    geometry_msgs/TwistWithCovariance velocity # Velocity in the header frame.
    geometry_msgs/Vector3 linear_acceleration  # Acceleration in the header frame.
    float64[9] linear_acceleration_covariance  # Row major x, y z
    
    geometry_msgs/Point[] polygon
    # A list of points that define the obstacle's geometry in horizontal
    # plane relative to the obstacle's pose.  The polygon is implicitly
    # closed by a segment between the last and first points.
    
    # Estimated oriented bounding box for object classes with rectangular shapes.
    float32 length                 # Length of the object in meters
    float32 length_quality         # Length quality number [0,1]
    float32 width                  # Width of the object in meters
    float32 width_quality          # Width quality number [0,1]
    
    uint8 classification           # Classification
    float32 classification_quality # Classification quality number [0,1]
    
    float32 existence_probability  # Existence probability [0,1]
    
    duration age_duration          # Age of the track since first detection.
    duration prediction_duration   # Age of the prediction since the active flag was last true.
    
    bool active                    # Active flag for if the objects is currently being detected.
    
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
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    MSG: geometry_msgs/TwistWithCovariance
    # This expresses velocity in free space with uncertainty.
    
    Twist twist
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
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
    const resolved = new TrackedObject(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.TwistWithCovariance.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.TwistWithCovariance()
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = geometry_msgs.msg.Vector3.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new geometry_msgs.msg.Vector3()
    }

    if (msg.linear_acceleration_covariance !== undefined) {
      resolved.linear_acceleration_covariance = msg.linear_acceleration_covariance;
    }
    else {
      resolved.linear_acceleration_covariance = new Array(9).fill(0)
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

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.length_quality !== undefined) {
      resolved.length_quality = msg.length_quality;
    }
    else {
      resolved.length_quality = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.width_quality !== undefined) {
      resolved.width_quality = msg.width_quality;
    }
    else {
      resolved.width_quality = 0.0
    }

    if (msg.classification !== undefined) {
      resolved.classification = msg.classification;
    }
    else {
      resolved.classification = 0
    }

    if (msg.classification_quality !== undefined) {
      resolved.classification_quality = msg.classification_quality;
    }
    else {
      resolved.classification_quality = 0.0
    }

    if (msg.existence_probability !== undefined) {
      resolved.existence_probability = msg.existence_probability;
    }
    else {
      resolved.existence_probability = 0.0
    }

    if (msg.age_duration !== undefined) {
      resolved.age_duration = msg.age_duration;
    }
    else {
      resolved.age_duration = {secs: 0, nsecs: 0}
    }

    if (msg.prediction_duration !== undefined) {
      resolved.prediction_duration = msg.prediction_duration;
    }
    else {
      resolved.prediction_duration = {secs: 0, nsecs: 0}
    }

    if (msg.active !== undefined) {
      resolved.active = msg.active;
    }
    else {
      resolved.active = false
    }

    return resolved;
    }
};

// Constants for message
TrackedObject.Constants = {
  VEHICLE: 0,
  PEDESTRIAN: 1,
  UNKNOWN: 255,
}

module.exports = TrackedObject;
