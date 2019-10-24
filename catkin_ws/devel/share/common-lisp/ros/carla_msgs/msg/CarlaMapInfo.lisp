; Auto-generated. Do not edit!


(cl:in-package carla_msgs-msg)


;//! \htmlinclude CarlaMapInfo.msg.html

(cl:defclass <CarlaMapInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (map_name
    :reader map_name
    :initarg :map_name
    :type cl:string
    :initform "")
   (opendrive
    :reader opendrive
    :initarg :opendrive
    :type cl:string
    :initform ""))
)

(cl:defclass CarlaMapInfo (<CarlaMapInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CarlaMapInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CarlaMapInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name carla_msgs-msg:<CarlaMapInfo> is deprecated: use carla_msgs-msg:CarlaMapInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CarlaMapInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:header-val is deprecated.  Use carla_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'map_name-val :lambda-list '(m))
(cl:defmethod map_name-val ((m <CarlaMapInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:map_name-val is deprecated.  Use carla_msgs-msg:map_name instead.")
  (map_name m))

(cl:ensure-generic-function 'opendrive-val :lambda-list '(m))
(cl:defmethod opendrive-val ((m <CarlaMapInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader carla_msgs-msg:opendrive-val is deprecated.  Use carla_msgs-msg:opendrive instead.")
  (opendrive m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CarlaMapInfo>) ostream)
  "Serializes a message object of type '<CarlaMapInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'opendrive))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'opendrive))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CarlaMapInfo>) istream)
  "Deserializes a message object of type '<CarlaMapInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'opendrive) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'opendrive) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CarlaMapInfo>)))
  "Returns string type for a message object of type '<CarlaMapInfo>"
  "carla_msgs/CarlaMapInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CarlaMapInfo)))
  "Returns string type for a message object of type 'CarlaMapInfo"
  "carla_msgs/CarlaMapInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CarlaMapInfo>)))
  "Returns md5sum for a message object of type '<CarlaMapInfo>"
  "13896e12d449662e7a6dbaeb31ad882a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CarlaMapInfo)))
  "Returns md5sum for a message object of type 'CarlaMapInfo"
  "13896e12d449662e7a6dbaeb31ad882a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CarlaMapInfo>)))
  "Returns full string definition for message of type '<CarlaMapInfo>"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Coporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents a vehicle control message sent to CARLA simulator~%~%Header header~%~%string map_name~%string opendrive~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CarlaMapInfo)))
  "Returns full string definition for message of type 'CarlaMapInfo"
  (cl:format cl:nil "#~%# Copyright (c) 2018-2019 Intel Coporation.~%#~%# This work is licensed under the terms of the MIT license.~%# For a copy, see <https://opensource.org/licenses/MIT>.~%#~%# This represents a vehicle control message sent to CARLA simulator~%~%Header header~%~%string map_name~%string opendrive~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CarlaMapInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'map_name))
     4 (cl:length (cl:slot-value msg 'opendrive))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CarlaMapInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'CarlaMapInfo
    (cl:cons ':header (header msg))
    (cl:cons ':map_name (map_name msg))
    (cl:cons ':opendrive (opendrive msg))
))
