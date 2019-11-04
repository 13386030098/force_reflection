// Auto-generated. Do not edit!

// (in-package force_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Force {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force_x = null;
      this.force_y = null;
      this.force_z = null;
    }
    else {
      if (initObj.hasOwnProperty('force_x')) {
        this.force_x = initObj.force_x
      }
      else {
        this.force_x = [];
      }
      if (initObj.hasOwnProperty('force_y')) {
        this.force_y = initObj.force_y
      }
      else {
        this.force_y = [];
      }
      if (initObj.hasOwnProperty('force_z')) {
        this.force_z = initObj.force_z
      }
      else {
        this.force_z = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Force
    // Serialize message field [force_x]
    bufferOffset = _arraySerializer.int32(obj.force_x, buffer, bufferOffset, null);
    // Serialize message field [force_y]
    bufferOffset = _arraySerializer.int32(obj.force_y, buffer, bufferOffset, null);
    // Serialize message field [force_z]
    bufferOffset = _arraySerializer.int32(obj.force_z, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Force
    let len;
    let data = new Force(null);
    // Deserialize message field [force_x]
    data.force_x = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [force_y]
    data.force_y = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [force_z]
    data.force_z = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.force_x.length;
    length += 4 * object.force_y.length;
    length += 4 * object.force_z.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'force_msg/Force';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '775e4325e2a6aa8d2d055511b3592b1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] force_x
    int32[] force_y
    int32[] force_z
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Force(null);
    if (msg.force_x !== undefined) {
      resolved.force_x = msg.force_x;
    }
    else {
      resolved.force_x = []
    }

    if (msg.force_y !== undefined) {
      resolved.force_y = msg.force_y;
    }
    else {
      resolved.force_y = []
    }

    if (msg.force_z !== undefined) {
      resolved.force_z = msg.force_z;
    }
    else {
      resolved.force_z = []
    }

    return resolved;
    }
};

module.exports = Force;
