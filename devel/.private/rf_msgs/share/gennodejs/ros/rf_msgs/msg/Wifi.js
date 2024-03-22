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

class Wifi {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.ap_id = null;
      this.txmac = null;
      this.chan = null;
      this.n_sub = null;
      this.n_rows = null;
      this.n_cols = null;
      this.bw = null;
      this.mcs = null;
      this.rssi = null;
      this.fc = null;
      this.seq_num = null;
      this.csi_real = null;
      this.csi_imag = null;
      this.rx_id = null;
      this.msg_id = null;
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
      if (initObj.hasOwnProperty('chan')) {
        this.chan = initObj.chan
      }
      else {
        this.chan = 0;
      }
      if (initObj.hasOwnProperty('n_sub')) {
        this.n_sub = initObj.n_sub
      }
      else {
        this.n_sub = 0;
      }
      if (initObj.hasOwnProperty('n_rows')) {
        this.n_rows = initObj.n_rows
      }
      else {
        this.n_rows = 0;
      }
      if (initObj.hasOwnProperty('n_cols')) {
        this.n_cols = initObj.n_cols
      }
      else {
        this.n_cols = 0;
      }
      if (initObj.hasOwnProperty('bw')) {
        this.bw = initObj.bw
      }
      else {
        this.bw = 0;
      }
      if (initObj.hasOwnProperty('mcs')) {
        this.mcs = initObj.mcs
      }
      else {
        this.mcs = 0;
      }
      if (initObj.hasOwnProperty('rssi')) {
        this.rssi = initObj.rssi
      }
      else {
        this.rssi = 0;
      }
      if (initObj.hasOwnProperty('fc')) {
        this.fc = initObj.fc
      }
      else {
        this.fc = 0;
      }
      if (initObj.hasOwnProperty('seq_num')) {
        this.seq_num = initObj.seq_num
      }
      else {
        this.seq_num = 0;
      }
      if (initObj.hasOwnProperty('csi_real')) {
        this.csi_real = initObj.csi_real
      }
      else {
        this.csi_real = [];
      }
      if (initObj.hasOwnProperty('csi_imag')) {
        this.csi_imag = initObj.csi_imag
      }
      else {
        this.csi_imag = [];
      }
      if (initObj.hasOwnProperty('rx_id')) {
        this.rx_id = initObj.rx_id
      }
      else {
        this.rx_id = '';
      }
      if (initObj.hasOwnProperty('msg_id')) {
        this.msg_id = initObj.msg_id
      }
      else {
        this.msg_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Wifi
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [ap_id]
    bufferOffset = _serializer.uint8(obj.ap_id, buffer, bufferOffset);
    // Serialize message field [txmac]
    bufferOffset = _arraySerializer.uint8(obj.txmac, buffer, bufferOffset, null);
    // Serialize message field [chan]
    bufferOffset = _serializer.uint8(obj.chan, buffer, bufferOffset);
    // Serialize message field [n_sub]
    bufferOffset = _serializer.uint32(obj.n_sub, buffer, bufferOffset);
    // Serialize message field [n_rows]
    bufferOffset = _serializer.uint8(obj.n_rows, buffer, bufferOffset);
    // Serialize message field [n_cols]
    bufferOffset = _serializer.uint8(obj.n_cols, buffer, bufferOffset);
    // Serialize message field [bw]
    bufferOffset = _serializer.uint8(obj.bw, buffer, bufferOffset);
    // Serialize message field [mcs]
    bufferOffset = _serializer.uint8(obj.mcs, buffer, bufferOffset);
    // Serialize message field [rssi]
    bufferOffset = _serializer.int32(obj.rssi, buffer, bufferOffset);
    // Serialize message field [fc]
    bufferOffset = _serializer.uint32(obj.fc, buffer, bufferOffset);
    // Serialize message field [seq_num]
    bufferOffset = _serializer.uint32(obj.seq_num, buffer, bufferOffset);
    // Serialize message field [csi_real]
    bufferOffset = _arraySerializer.float64(obj.csi_real, buffer, bufferOffset, null);
    // Serialize message field [csi_imag]
    bufferOffset = _arraySerializer.float64(obj.csi_imag, buffer, bufferOffset, null);
    // Serialize message field [rx_id]
    bufferOffset = _serializer.string(obj.rx_id, buffer, bufferOffset);
    // Serialize message field [msg_id]
    bufferOffset = _serializer.uint32(obj.msg_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Wifi
    let len;
    let data = new Wifi(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [ap_id]
    data.ap_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [txmac]
    data.txmac = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [chan]
    data.chan = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [n_sub]
    data.n_sub = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [n_rows]
    data.n_rows = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [n_cols]
    data.n_cols = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bw]
    data.bw = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mcs]
    data.mcs = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rssi]
    data.rssi = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fc]
    data.fc = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [seq_num]
    data.seq_num = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [csi_real]
    data.csi_real = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [csi_imag]
    data.csi_imag = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [rx_id]
    data.rx_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [msg_id]
    data.msg_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.txmac.length;
    length += 8 * object.csi_real.length;
    length += 8 * object.csi_imag.length;
    length += _getByteLength(object.rx_id);
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rf_msgs/Wifi';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6b3816e58324f4c826cc5e2cd4f2f3b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message accepts data from a WiFi access point for us in 
    # robotics applications. The core data point is CSI, the channel
    # state information. 
    
    # CSI matrix is n_sub x n_rows x n_cols
    
    Header header
    
    uint8 ap_id # access point collecting the CSI
    uint8[] txmac
    
    uint8 chan # channel number
    
    uint32 n_sub # number of subcarriers
    uint8 n_rows # number of rows for the CSI matrix, generally the number of RX antenna
    uint8 n_cols # number of columns, generally the number of TX antenna
    
    # bandwidth of the signal, can be 20, 40 or 80 MHz, 
    # the number of subcarriers are affected by this numbers
    uint8 bw 
    
    # the number of spatial channels. 
    # Fewer than n_cols means the columns index greater than number of 
    # spatial channels will be zero
    uint8 mcs 
    
    int32 rssi # received signal strength across "n_rows" antennas
    
    uint32 fc # packet type byte
    uint32 seq_num # packet number
    
    float64[] csi_real # channel state information - real part
    float64[] csi_imag # channel state information - complex part
    
    string rx_id #flag of receiver
    
    uint32 msg_id #realtime msg for debug
    
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
    const resolved = new Wifi(null);
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

    if (msg.chan !== undefined) {
      resolved.chan = msg.chan;
    }
    else {
      resolved.chan = 0
    }

    if (msg.n_sub !== undefined) {
      resolved.n_sub = msg.n_sub;
    }
    else {
      resolved.n_sub = 0
    }

    if (msg.n_rows !== undefined) {
      resolved.n_rows = msg.n_rows;
    }
    else {
      resolved.n_rows = 0
    }

    if (msg.n_cols !== undefined) {
      resolved.n_cols = msg.n_cols;
    }
    else {
      resolved.n_cols = 0
    }

    if (msg.bw !== undefined) {
      resolved.bw = msg.bw;
    }
    else {
      resolved.bw = 0
    }

    if (msg.mcs !== undefined) {
      resolved.mcs = msg.mcs;
    }
    else {
      resolved.mcs = 0
    }

    if (msg.rssi !== undefined) {
      resolved.rssi = msg.rssi;
    }
    else {
      resolved.rssi = 0
    }

    if (msg.fc !== undefined) {
      resolved.fc = msg.fc;
    }
    else {
      resolved.fc = 0
    }

    if (msg.seq_num !== undefined) {
      resolved.seq_num = msg.seq_num;
    }
    else {
      resolved.seq_num = 0
    }

    if (msg.csi_real !== undefined) {
      resolved.csi_real = msg.csi_real;
    }
    else {
      resolved.csi_real = []
    }

    if (msg.csi_imag !== undefined) {
      resolved.csi_imag = msg.csi_imag;
    }
    else {
      resolved.csi_imag = []
    }

    if (msg.rx_id !== undefined) {
      resolved.rx_id = msg.rx_id;
    }
    else {
      resolved.rx_id = ''
    }

    if (msg.msg_id !== undefined) {
      resolved.msg_id = msg.msg_id;
    }
    else {
      resolved.msg_id = 0
    }

    return resolved;
    }
};

module.exports = Wifi;
