// Auto-generated. Do not edit!

// (in-package carla_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CarlaMapInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.map_name = null;
      this.opendrive = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('map_name')) {
        this.map_name = initObj.map_name
      }
      else {
        this.map_name = '';
      }
      if (initObj.hasOwnProperty('opendrive')) {
        this.opendrive = initObj.opendrive
      }
      else {
        this.opendrive = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CarlaMapInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [map_name]
    bufferOffset = _serializer.string(obj.map_name, buffer, bufferOffset);
    // Serialize message field [opendrive]
    bufferOffset = _serializer.string(obj.opendrive, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CarlaMapInfo
    let len;
    let data = new CarlaMapInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [map_name]
    data.map_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [opendrive]
    data.opendrive = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.map_name.length;
    length += object.opendrive.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'carla_msgs/CarlaMapInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13896e12d449662e7a6dbaeb31ad882a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    # Copyright (c) 2018-2019 Intel Coporation.
    #
    # This work is licensed under the terms of the MIT license.
    # For a copy, see <https://opensource.org/licenses/MIT>.
    #
    # This represents a vehicle control message sent to CARLA simulator
    
    Header header
    
    string map_name
    string opendrive
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CarlaMapInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.map_name !== undefined) {
      resolved.map_name = msg.map_name;
    }
    else {
      resolved.map_name = ''
    }

    if (msg.opendrive !== undefined) {
      resolved.opendrive = msg.opendrive;
    }
    else {
      resolved.opendrive = ''
    }

    return resolved;
    }
};

module.exports = CarlaMapInfo;
