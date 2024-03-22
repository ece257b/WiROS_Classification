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

class Bearing {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ap_id = null;
      this.txmac = null;
      this.n_tx = null;
      this.n_rx = null;
      this.seq = null;
      this.rssi = null;
      this.aoa = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('ap_id')) {
        this.ap_id = initObj.ap_id
      }
      else {
        this.ap_id = 0;
      }
      if (initObj.hasOwnProperty('txmac')) {
        this.txmac = initObj.txmac
      }
      else {
        this.txmac = [];
      }
      if (initObj.hasOwnProperty('n_tx')) {
        this.n_tx = initObj.n_tx
      }
      else {
        this.n_tx = 0;
      }
      if (initObj.hasOwnProperty('n_rx')) {
        this.n_rx = initObj.n_rx
      }
      else {
        this.n_rx = 0;
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = [];
      }
      if (initObj.hasOwnProperty('aoa')) {
        this.aoa = initObj.aoa
      }
      else {
        this.aoa = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bearing
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ap_id]
    bufferOffset = _serializer.uint8(obj.ap_id, buffer, bufferOffset);
    // Serialize message field [txmac]
    bufferOffset = _arraySerializer.uint8(obj.txmac, buffer, bufferOffset, null);
    // Serialize message field [n_tx]
    bufferOffset = _serializer.uint8(obj.n_tx, buffer, bufferOffset);
    // Serialize message field [n_rx]
    bufferOffset = _serializer.uint8(obj.n_rx, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [rssi]
    bufferOffset = _arraySerializer.int32(obj.rssi, buffer, bufferOffset, null);
    // Serialize message field [aoa]
    bufferOffset = _arraySerializer.float64(obj.aoa, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bearing
    let len;
    let data = new Bearing(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ap_id]
    data.ap_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [txmac]
    data.txmac = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [n_tx]
    data.n_tx = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [n_rx]
    data.n_rx = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [rssi]
    data.rssi = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [aoa]
    data.aoa = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.txmac.length;
    length += 4 * object.rssi.length;
    length += 8 * object.aoa.length;
    return length + 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rf_msgs/Bearing';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '967f0be24bd6e9e8f5c88973721bda70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains the angle of arrival measurements computed
    # from a particular Wifi message. See Wifi.msg for more details
    
    Header header
    
    uint8 ap_id # AP identifier which collected the CSI data, sequential starting from 0, up to (total number of AP's - 1)
    uint8[] txmac
    uint8 n_tx # number of antennas on the transmitter antenna
    uint8 n_rx # number of antennas on the receiver antenna
    uint32 seq # packet number
    
    # RSSI of packet
    int32[] rssi
    
    # angle of arrival values computed from n_tx antennas, this must be set
    float64[] aoa # AoA in the coordinates of wifi radio
    
    # (CURRENTLY UNUSED) angle of arrival values computed at n_rx antennas
    # float64[] aod
    # float64[] aod_local
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
    const resolved = new Bearing(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.ap_id !== undefined) {
      resolved.ap_id = msg.ap_id;
    }
    else {
      resolved.ap_id = 0
    }

    if (msg.txmac !== undefined) {
      resolved.txmac = msg.txmac;
    }
    else {
      resolved.txmac = []
    }

    if (msg.n_tx !== undefined) {
      resolved.n_tx = msg.n_tx;
    }
    else {
      resolved.n_tx = 0
    }

    if (msg.n_rx !== undefined) {
      resolved.n_rx = msg.n_rx;
    }
    else {
      resolved.n_rx = 0
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = []
    }

    if (msg.aoa !== undefined) {
      resolved.aoa = msg.aoa;
    }
    else {
      resolved.aoa = []
    }

    return resolved;
    }
};

module.exports = Bearing;
