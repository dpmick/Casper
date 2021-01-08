// Auto-generated. Do not edit!

// (in-package casper.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DualMotorController {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.M1DIR = null;
      this.M2DIR = null;
      this.M1PWM = null;
      this.M2PWM = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('M1DIR')) {
        this.M1DIR = initObj.M1DIR
      }
      else {
        this.M1DIR = 0;
      }
      if (initObj.hasOwnProperty('M2DIR')) {
        this.M2DIR = initObj.M2DIR
      }
      else {
        this.M2DIR = 0;
      }
      if (initObj.hasOwnProperty('M1PWM')) {
        this.M1PWM = initObj.M1PWM
      }
      else {
        this.M1PWM = 0.0;
      }
      if (initObj.hasOwnProperty('M2PWM')) {
        this.M2PWM = initObj.M2PWM
      }
      else {
        this.M2PWM = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DualMotorController
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [M1DIR]
    bufferOffset = _serializer.int64(obj.M1DIR, buffer, bufferOffset);
    // Serialize message field [M2DIR]
    bufferOffset = _serializer.int64(obj.M2DIR, buffer, bufferOffset);
    // Serialize message field [M1PWM]
    bufferOffset = _serializer.float64(obj.M1PWM, buffer, bufferOffset);
    // Serialize message field [M2PWM]
    bufferOffset = _serializer.float64(obj.M2PWM, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DualMotorController
    let len;
    let data = new DualMotorController(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [M1DIR]
    data.M1DIR = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [M2DIR]
    data.M2DIR = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [M1PWM]
    data.M1PWM = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [M2PWM]
    data.M2PWM = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'casper/DualMotorController';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8851bbde2e6ab82060d8c2f1d601e8f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int64 M1DIR
    int64 M2DIR
    float64 M1PWM
    float64 M2PWM
    
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
    const resolved = new DualMotorController(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.M1DIR !== undefined) {
      resolved.M1DIR = msg.M1DIR;
    }
    else {
      resolved.M1DIR = 0
    }

    if (msg.M2DIR !== undefined) {
      resolved.M2DIR = msg.M2DIR;
    }
    else {
      resolved.M2DIR = 0
    }

    if (msg.M1PWM !== undefined) {
      resolved.M1PWM = msg.M1PWM;
    }
    else {
      resolved.M1PWM = 0.0
    }

    if (msg.M2PWM !== undefined) {
      resolved.M2PWM = msg.M2PWM;
    }
    else {
      resolved.M2PWM = 0.0
    }

    return resolved;
    }
};

module.exports = DualMotorController;
