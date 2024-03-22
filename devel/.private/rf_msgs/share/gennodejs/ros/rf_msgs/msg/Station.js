// Auto-generated. Do not edit!

// (in-package rf_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Station {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mac = null;
      this.channel = null;
      this.rssi = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mac')) {
        this.mac = initObj.mac
      }
      else {
        this.mac = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Station
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [mac] has the right length
    if (obj.mac.length !== 6) {
      throw new Error('Unable to serialize array field mac - length must be 6')
    }
    // Serialize message field [mac]
    bufferOffset = _arraySerializer.uint8(obj.mac, buffer, bufferOffset, 6);
    // Serialize message field [channel]
    bufferOffset = _serializer.int32(obj.channel, buffer, bufferOffset);
    // Serialize message field [rssi]
    bufferOffset = _serializer.int32(obj.rssi, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Station
    let len;
    let data = new Station(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mac]
    data.mac = _arrayDeserializer.uint8(buffer, bufferOffset, 6)
    // Deserialize message field [channel]
    data.channel = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rssi]
    data.rssi = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rf_msgs/Station';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '10b6cc24ce2106ac7952f0affaba2507';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #basic object which can be detected by wireless sensing.
    
    Header header
    
    #mac address
    uint8[6] mac
    
    #wifi channel on which it is broadcast
    int32 channel
    
    #measured rssi
    int32 rssi
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
    const resolved = new Station(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mac !== undefined) {
      resolved.mac = msg.mac;
    }
    else {
      resolved.mac = new Array(6).fill(0)
    }

    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = 0
    }

    return resolved;
    }
};

module.exports = Station;
