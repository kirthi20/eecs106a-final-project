// Auto-generated. Do not edit!

// (in-package burger_move_action.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Burger_moveFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.step_distance = null;
      this.request_id = null;
    }
    else {
      if (initObj.hasOwnProperty('step_distance')) {
        this.step_distance = initObj.step_distance
      }
      else {
        this.step_distance = [];
      }
      if (initObj.hasOwnProperty('request_id')) {
        this.request_id = initObj.request_id
      }
      else {
        this.request_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Burger_moveFeedback
    // Serialize message field [step_distance]
    bufferOffset = _arraySerializer.int32(obj.step_distance, buffer, bufferOffset, null);
    // Serialize message field [request_id]
    bufferOffset = _serializer.int32(obj.request_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Burger_moveFeedback
    let len;
    let data = new Burger_moveFeedback(null);
    // Deserialize message field [step_distance]
    data.step_distance = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [request_id]
    data.request_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.step_distance.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'burger_move_action/Burger_moveFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e6f64e714e98d3c4b20d9309a22a790';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    int32[] step_distance
    int32 request_id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Burger_moveFeedback(null);
    if (msg.step_distance !== undefined) {
      resolved.step_distance = msg.step_distance;
    }
    else {
      resolved.step_distance = []
    }

    if (msg.request_id !== undefined) {
      resolved.request_id = msg.request_id;
    }
    else {
      resolved.request_id = 0
    }

    return resolved;
    }
};

module.exports = Burger_moveFeedback;
