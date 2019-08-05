cmake_minimum_required(VERSION 2.8.3)
project(carla_apollo_bridge)

find_package(catkin REQUIRED COMPONENTS
  carla_msgs
  rospy
)

catkin_python_setup()

catkin_package(
        CATKIN_DEPENDS
        rospy
)

catkin_install_python(PROGRAMS
    src/carla_apollo_bridge/carla_to_apollo_vehicle_status
    src/carla_apollo_bridge/carla_to_apollo_waypoints
    src/carla_apollo_bridge/odometry_to_posestamped
    src/carla_apollo_bridge/vehiclecmd_to_ackermanndrive
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY launch/
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/launch
)

install(DIRECTORY config/
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/config
)

