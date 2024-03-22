// Auto-generated. Do not edit!

// (in-package wiros_csi_node.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConfigureCSIRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chan = null;
      this.bw = null;
      this.mac_filter = null;
    }
    else {
      if (initObj.hasOwnProperty('chan')) {
        this.chan = initObj.chan
      }
      else {
        this.chan = 0;
      }
      if (initObj.hasOwnProperty('bw')) {
        this.bw = initObj.bw
      }
      else {
        this.bw = 0;
      }
      if (initObj.hasOwnProperty('mac_filter')) {
        this.mac_filter = initObj.mac_filter
      }
      else {
        this.mac_filter = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigureCSIRequest
    // Serialize message field [chan]
    bufferOffset = _serializer.int32(obj.chan, buffer, bufferOffset);
    // Serialize message field [bw]
    bufferOffset = _serializer.int32(obj.bw, buffer, bufferOffset);
    // Serialize message field [mac_filter]
    bufferOffset = _serializer.string(obj.mac_filter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigureCSIRequest
    let len;
    let data = new ConfigureCSIRequest(null);
    // Deserialize message field [chan]
    data.chan = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [bw]
    data.bw = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mac_filter]
    data.mac_filter = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.mac_filter);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wiros_csi_node/ConfigureCSIRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3538d33fe6ceb7e291eb0316ceb8e9d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #set these values to -1 to keep the current configuration
    int32 chan
    int32 bw
    
    #set to "" to keep current config
    string mac_filter
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConfigureCSIRequest(null);
    if (msg.chan !== undefined) {
      resolved.chan = msg.chan;
    }
    else {
      resolved.chan = 0
    }

    if (msg.bw !== undefined) {
      resolved.bw = msg.bw;
    }
    else {
      resolved.bw = 0
    }

    if (msg.mac_filter !== undefined) {
      resolved.mac_filter = msg.mac_filter;
    }
    else {
      resolved.mac_filter = ''
    }

    return resolved;
    }
};

class ConfigureCSIResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigureCSIResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigureCSIResponse
    let len;
    let data = new ConfigureCSIResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.result);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'wiros_csi_node/ConfigureCSIResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c22f2a1ed8654a0b365f1bb3f7ff2c0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConfigureCSIResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ConfigureCSIRequest,
  Response: ConfigureCSIResponse,
  md5sum() { return '37e074cc5fb8a82d0a146e413ef0dc09'; },
  datatype() { return 'wiros_csi_node/ConfigureCSI'; }
};
