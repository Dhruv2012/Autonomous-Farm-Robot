// Auto-generated. Do not edit!

// (in-package marti_sensor_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DioRealTimeData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.sample_frequency = null;
      this.latest_sample_time = null;
      this.sample_states = null;
      this.sample_times = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('sample_frequency')) {
        this.sample_frequency = initObj.sample_frequency
      }
      else {
        this.sample_frequency = 0.0;
      }
      if (initObj.hasOwnProperty('latest_sample_time')) {
        this.latest_sample_time = initObj.latest_sample_time
      }
      else {
        this.latest_sample_time = 0;
      }
      if (initObj.hasOwnProperty('sample_states')) {
        this.sample_states = initObj.sample_states
      }
      else {
        this.sample_states = [];
      }
      if (initObj.hasOwnProperty('sample_times')) {
        this.sample_times = initObj.sample_times
      }
      else {
        this.sample_times = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DioRealTimeData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [sample_frequency]
    bufferOffset = _serializer.float64(obj.sample_frequency, buffer, bufferOffset);
    // Serialize message field [latest_sample_time]
    bufferOffset = _serializer.uint64(obj.latest_sample_time, buffer, bufferOffset);
    // Serialize message field [sample_states]
    bufferOffset = _arraySerializer.uint16(obj.sample_states, buffer, bufferOffset, null);
    // Serialize message field [sample_times]
    bufferOffset = _arraySerializer.uint32(obj.sample_times, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DioRealTimeData
    let len;
    let data = new DioRealTimeData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [sample_frequency]
    data.sample_frequency = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latest_sample_time]
    data.latest_sample_time = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [sample_states]
    data.sample_states = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [sample_times]
    data.sample_times = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 2 * object.sample_states.length;
    length += 4 * object.sample_times.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'marti_sensor_msgs/DioRealTimeData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98eef69989f7d8b60307368e8e339ff4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for containing digital data obtained by a real-time DAQ.
    
    Header header
    # header contains the timestamp of when this data was obtained from
    # the device.
    
    float64 sample_frequency
    # The sampling frequency [Hz] of the DAQ.
    
    uint64 latest_sample_time
    # The most recent time (in sampling clock ticks) that the port was
    # sampled.
    
    uint16[] sample_states
    uint32[] sample_times
    # DAQ data filtered to only contain changes in states.  sample_times[]
    # is a list of clock ticks encoded as a (negative) offset from
    # latest_sample_time (ex: clock_time[i] = latest_sample_time -
    # sample_times[i]).  This encoding reduces the times from uint64 to
    # uint32.  sample_states[] are the port states at the corresponding
    # times.
    
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
    const resolved = new DioRealTimeData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.sample_frequency !== undefined) {
      resolved.sample_frequency = msg.sample_frequency;
    }
    else {
      resolved.sample_frequency = 0.0
    }

    if (msg.latest_sample_time !== undefined) {
      resolved.latest_sample_time = msg.latest_sample_time;
    }
    else {
      resolved.latest_sample_time = 0
    }

    if (msg.sample_states !== undefined) {
      resolved.sample_states = msg.sample_states;
    }
    else {
      resolved.sample_states = []
    }

    if (msg.sample_times !== undefined) {
      resolved.sample_times = msg.sample_times;
    }
    else {
      resolved.sample_times = []
    }

    return resolved;
    }
};

module.exports = DioRealTimeData;
