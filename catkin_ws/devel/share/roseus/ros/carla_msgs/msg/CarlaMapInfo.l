;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaMapInfo)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaMapInfo (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLAMAPINFO")
  (make-package "CARLA_MSGS::CARLAMAPINFO"))

(in-package "ROS")
;;//! \htmlinclude CarlaMapInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass carla_msgs::CarlaMapInfo
  :super ros::object
  :slots (_header _map_name _opendrive ))

(defmethod carla_msgs::CarlaMapInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:map_name __map_name) "")
    ((:opendrive __opendrive) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _map_name (string __map_name))
   (setq _opendrive (string __opendrive))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:map_name
   (&optional __map_name)
   (if __map_name (setq _map_name __map_name)) _map_name)
  (:opendrive
   (&optional __opendrive)
   (if __opendrive (setq _opendrive __opendrive)) _opendrive)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _map_name
    4 (length _map_name)
    ;; string _opendrive
    4 (length _opendrive)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _map_name
       (write-long (length _map_name) s) (princ _map_name s)
     ;; string _opendrive
       (write-long (length _opendrive) s) (princ _opendrive s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _map_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _map_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _opendrive
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _opendrive (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get carla_msgs::CarlaMapInfo :md5sum-) "13896e12d449662e7a6dbaeb31ad882a")
(setf (get carla_msgs::CarlaMapInfo :datatype-) "carla_msgs/CarlaMapInfo")
(setf (get carla_msgs::CarlaMapInfo :definition-)
      "#
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
string frame_id

")



(provide :carla_msgs/CarlaMapInfo "13896e12d449662e7a6dbaeb31ad882a")


