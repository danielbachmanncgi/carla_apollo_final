
(cl:in-package :asdf)

(defsystem "carla_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CarlaCollisionEvent" :depends-on ("_package_CarlaCollisionEvent"))
    (:file "_package_CarlaCollisionEvent" :depends-on ("_package"))
    (:file "CarlaEgoVehicleControl" :depends-on ("_package_CarlaEgoVehicleControl"))
    (:file "_package_CarlaEgoVehicleControl" :depends-on ("_package"))
    (:file "CarlaEgoVehicleInfo" :depends-on ("_package_CarlaEgoVehicleInfo"))
    (:file "_package_CarlaEgoVehicleInfo" :depends-on ("_package"))
    (:file "CarlaEgoVehicleInfoWheel" :depends-on ("_package_CarlaEgoVehicleInfoWheel"))
    (:file "_package_CarlaEgoVehicleInfoWheel" :depends-on ("_package"))
    (:file "CarlaEgoVehicleStatus" :depends-on ("_package_CarlaEgoVehicleStatus"))
    (:file "_package_CarlaEgoVehicleStatus" :depends-on ("_package"))
    (:file "CarlaLaneInvasionEvent" :depends-on ("_package_CarlaLaneInvasionEvent"))
    (:file "_package_CarlaLaneInvasionEvent" :depends-on ("_package"))
    (:file "CarlaMapInfo" :depends-on ("_package_CarlaMapInfo"))
    (:file "_package_CarlaMapInfo" :depends-on ("_package"))
  ))