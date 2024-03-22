// Auto-generated. Do not edit!

// (in-package rf_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Station = require('./Station.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AccessPoints {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.aps = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('aps')) {
        this.aps = initObj.aps
      }
      else {
        this.aps = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AccessPoints
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [aps]
    // Serialize the length for message field [aps]
    bufferOffset = _serializer.uint32(obj.aps.length, buffer, bufferOffset);
    obj.aps.forEach((val) => {
      bufferOffset = Station.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AccessPoints
    let len;
    let data = new AccessPoints(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [aps]
    // Deserialize array length for message field [aps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.aps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.aps[i] = Station.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.aps.forEach((val) => {
      length += Station.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rf_msgs/AccessPoints';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'abf4bd98be28b4420acdb573e4838a47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #A list of stations.
    
    Header header
    Station[] aps
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
    MSG: rf_msgs/Station
    #basic object which can be detected by wireless sensing.
    
    Header header
    
    #mac address
    uint8[6] mac
    
    #wifi channel on which it is broadcast
    int32 channel
    
    #measured rssi
    int32 rssi
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AccessPoints(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.aps !== undefined) {
      resolved.aps = new Array(msg.aps.length);
      for (let i = 0; i < resolved.aps.length; ++i) {
        resolved.aps[i] = Station.Resolve(msg.aps[i]);
      }
    }
    else {
      resolved.aps = []
    }

    return resolved;
    }
};

module.exports = AccessPoints;
