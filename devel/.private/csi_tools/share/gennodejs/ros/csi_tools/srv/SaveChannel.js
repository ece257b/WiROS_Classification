// Auto-generated. Do not edit!

// (in-package csi_tools.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SaveChannelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.filename = null;
      this.num_channels = null;
      this.mac = null;
    }
    else {
      if (initObj.hasOwnProperty('filename')) {
        this.filename = initObj.filename
      }
      else {
        this.filename = '';
      }
      if (initObj.hasOwnProperty('num_channels')) {
        this.num_channels = initObj.num_channels
      }
      else {
        this.num_channels = 0;
      }
      if (initObj.hasOwnProperty('mac')) {
        this.mac = initObj.mac
      }
      else {
        this.mac = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveChannelRequest
    // Serialize message field [filename]
    bufferOffset = _serializer.string(obj.filename, buffer, bufferOffset);
    // Serialize message field [num_channels]
    bufferOffset = _serializer.int32(obj.num_channels, buffer, bufferOffset);
    // Serialize message field [mac]
    bufferOffset = _serializer.string(obj.mac, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveChannelRequest
    let len;
    let data = new SaveChannelRequest(null);
    // Deserialize message field [filename]
    data.filename = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [num_channels]
    data.num_channels = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mac]
    data.mac = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.filename);
    length += _getByteLength(object.mac);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'csi_tools/SaveChannelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd3566f0ecc10925bec095e47559ee15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #set these values to -1 to keep the current configuration
    string filename
    int32 num_channels
    #leave as '' for no mac filter
    string mac
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveChannelRequest(null);
    if (msg.filename !== undefined) {
      resolved.filename = msg.filename;
    }
    else {
      resolved.filename = ''
    }

    if (msg.num_channels !== undefined) {
      resolved.num_channels = msg.num_channels;
    }
    else {
      resolved.num_channels = 0
    }

    if (msg.mac !== undefined) {
      resolved.mac = msg.mac;
    }
    else {
      resolved.mac = ''
    }

    return resolved;
    }
};

class SaveChannelResponse {
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
    // Serializes a message object of type SaveChannelResponse
    // Serialize message field [result]
    bufferOffset = _serializer.string(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveChannelResponse
    let len;
    let data = new SaveChannelResponse(null);
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
    return 'csi_tools/SaveChannelResponse';
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
    const resolved = new SaveChannelResponse(null);
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
  Request: SaveChannelRequest,
  Response: SaveChannelResponse,
  md5sum() { return 'e4f28584a2301cb8628c003709fe824c'; },
  datatype() { return 'csi_tools/SaveChannel'; }
};
