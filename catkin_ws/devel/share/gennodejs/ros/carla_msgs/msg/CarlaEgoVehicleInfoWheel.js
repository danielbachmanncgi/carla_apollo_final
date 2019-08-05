// Auto-generated. Do not edit!

// (in-package carla_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CarlaEgoVehicleInfoWheel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tire_friction = null;
      this.damping_rate = null;
      this.steer_angle = null;
      this.disable_steering = null;
    }
    else {
      if (initObj.hasOwnProperty('tire_friction')) {
        this.tire_friction = initObj.tire_friction
      }
      else {
        this.tire_friction = 0.0;
      }
      if (initObj.hasOwnProperty('damping_rate')) {
        this.damping_rate = initObj.damping_rate
      }
      else {
        this.damping_rate = 0.0;
      }
      if (initObj.hasOwnProperty('steer_angle')) {
        this.steer_angle = initObj.steer_angle
      }
      else {
        this.steer_angle = 0.0;
      }
      if (initObj.hasOwnProperty('disable_steering')) {
        this.disable_steering = initObj.disable_steering
      }
      else {
        this.disable_steering = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarlaEgoVehicleInfoWheel
    // Serialize message field [tire_friction]
    bufferOffset = _serializer.float32(obj.tire_friction, buffer, bufferOffset);
    // Serialize message field [damping_rate]
    bufferOffset = _serializer.float32(obj.damping_rate, buffer, bufferOffset);
    // Serialize message field [steer_angle]
    bufferOffset = _serializer.float32(obj.steer_angle, buffer, bufferOffset);
    // Serialize message field [disable_steering]
    bufferOffset = _serializer.bool(obj.disable_steering, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarlaEgoVehicleInfoWheel
    let len;
    let data = new CarlaEgoVehicleInfoWheel(null);
    // Deserialize message field [tire_friction]
    data.tire_friction = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [damping_rate]
    data.damping_rate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steer_angle]
    data.steer_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [disable_steering]
    data.disable_steering = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_msgs/CarlaEgoVehicleInfoWheel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73e85d22cc2145b0a4cf17f2e801c1dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Copyright (c) 2019 Intel Coporation.
    #
    # This work is licensed under the terms of the MIT license.
    # For a copy, see <https://opensource.org/licenses/MIT>.
    #
    float32 tire_friction
    float32 damping_rate
    float32 steer_angle
    bool disable_steering
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarlaEgoVehicleInfoWheel(null);
    if (msg.tire_friction !== undefined) {
      resolved.tire_friction = msg.tire_friction;
    }
    else {
      resolved.tire_friction = 0.0
    }

    if (msg.damping_rate !== undefined) {
      resolved.damping_rate = msg.damping_rate;
    }
    else {
      resolved.damping_rate = 0.0
    }

    if (msg.steer_angle !== undefined) {
      resolved.steer_angle = msg.steer_angle;
    }
    else {
      resolved.steer_angle = 0.0
    }

    if (msg.disable_steering !== undefined) {
      resolved.disable_steering = msg.disable_steering;
    }
    else {
      resolved.disable_steering = false
    }

    return resolved;
    }
};

module.exports = CarlaEgoVehicleInfoWheel;
