#Start carla-apollo bridge
export PYTHONPATH=$PYTHONPATH:~/carla/CARLA_0.9.5/PythonAPI/carla/dist/carla-0.9.5-py2.7-linux-x86_64.egg:/carla/CARLA_0.9.5/PythonAPI/carla

source ~/carla/carla-apollo/catkin_ws/devel/setup.bash

roslaunch carla_apollo_bridge carla_apollo_bridge_with_manual_control.launch
