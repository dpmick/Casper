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

class Encoder {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.Current = null;
      this.Encoder1 = null;
      this.Encoder2 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('Current')) {
        this.Current = initObj.Current
      }
      else {
        this.Current = 0.0;
      }
      if (initObj.hasOwnProperty('Encoder1')) {
        this.Encoder1 = initObj.Encoder1
      }
      else {
        this.Encoder1 = 0.0;
      }
      if (initObj.hasOwnProperty('Encoder2')) {
        this.Encoder2 = initObj.Encoder2
      }
      else {
        this.Encoder2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Encoder
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [Current]
    bufferOffset = _serializer.float64(obj.Current, buffer, bufferOffset);
    // Serialize message field [Encoder1]
    bufferOffset = _serializer.float64(obj.Encoder1, buffer, bufferOffset);
    // Serialize message field [Encoder2]
    bufferOffset = _serializer.float64(obj.Encoder2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Encoder
    let len;
    let data = new Encoder(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [Current]
    data.Current = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Encoder1]
    data.Encoder1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [Encoder2]
    data.Encoder2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'casper/Encoder';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9684e83a0d0addb6c2e31639cbbdce64';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 Current
    float64 Encoder1
    float64 Encoder2
    
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
    const resolved = new Encoder(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.Current !== undefined) {
      resolved.Current = msg.Current;
    }
    else {
      resolved.Current = 0.0
    }

    if (msg.Encoder1 !== undefined) {
      resolved.Encoder1 = msg.Encoder1;
    }
    else {
      resolved.Encoder1 = 0.0
    }

    if (msg.Encoder2 !== undefined) {
      resolved.Encoder2 = msg.Encoder2;
    }
    else {
      resolved.Encoder2 = 0.0
    }

    return resolved;
    }
};

module.exports = Encoder;
