;; Auto-generated. Do not edit!


(when (boundp 'carla_msgs::CarlaEgoVehicleInfoWheel)
  (if (not (find-package "CARLA_MSGS"))
    (make-package "CARLA_MSGS"))
  (shadow 'CarlaEgoVehicleInfoWheel (find-package "CARLA_MSGS")))
(unless (find-package "CARLA_MSGS::CARLAEGOVEHICLEINFOWHEEL")
  (make-package "CARLA_MSGS::CARLAEGOVEHICLEINFOWHEEL"))

(in-package "ROS")
;;//! \htmlinclude CarlaEgoVehicleInfoWheel.msg.html


(defclass carla_msgs::CarlaEgoVehicleInfoWheel
  :super ros::object
  :slots (_tire_friction _damping_rate _steer_angle _disable_steering ))

(defmethod carla_msgs::CarlaEgoVehicleInfoWheel
  (:init
   (&key
    ((:tire_friction __tire_friction) 0.0)
    ((:damping_rate __damping_rate) 0.0)
    ((:steer_angle __steer_angle) 0.0)
    ((:disable_steering __disable_steering) nil)
    )
   (send-super :init)
   (setq _tire_friction (float __tire_friction))
   (setq _damping_rate (float __damping_rate))
   (setq _steer_angle (float __steer_angle))
   (setq _disable_steering __disable_steering)
   self)
  (:tire_friction
   (&optional __tire_friction)
   (if __tire_friction (setq _tire_friction __tire_friction)) _tire_friction)
  (:damping_rate
   (&optional __damping_rate)
   (if __damping_rate (setq _damping_rate __damping_rate)) _damping_rate)
  (:steer_angle
   (&optional __steer_angle)
   (if __steer_angle (setq _steer_angle __steer_angle)) _steer_angle)
  (:disable_steering
   (&optional __disable_steering)
   (if __disable_steering (setq _disable_steering __disable_steering)) _disable_steering)
  (:serialization-length
   ()
   (+
    ;; float32 _tire_friction
    4
    ;; float32 _damping_rate
    4
    ;; float32 _steer_angle
    4
    ;; bool _disable_steering
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _tire_friction
       (sys::poke _tire_friction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _damping_rate
       (sys::poke _damping_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steer_angle
       (sys::poke _steer_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _disable_steering
       (if _disable_steering (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _tire_friction
     (setq _tire_friction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _damping_rate
     (setq _damping_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steer_angle
     (setq _steer_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _disable_steering
     (setq _disable_steering (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get carla_msgs::CarlaEgoVehicleInfoWheel :md5sum-) "73e85d22cc2145b0a4cf17f2e801c1dd")
(setf (get carla_msgs::CarlaEgoVehicleInfoWheel :datatype-) "carla_msgs/CarlaEgoVehicleInfoWheel")
(setf (get carla_msgs::CarlaEgoVehicleInfoWheel :definition-)
      "#
# Copyright (c) 2019 Intel Coporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
float32 tire_friction
float32 damping_rate
float32 steer_angle
bool disable_steering

")



(provide :carla_msgs/CarlaEgoVehicleInfoWheel "73e85d22cc2145b0a4cf17f2e801c1dd")


