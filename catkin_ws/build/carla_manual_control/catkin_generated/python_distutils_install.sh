#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/lukas/carla/carla-apollo/catkin_ws/src/carla_manual_control"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/lukas/carla/carla-apollo/catkin_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/lukas/carla/carla-apollo/catkin_ws/install/lib/python2.7/dist-packages:/home/lukas/carla/carla-apollo/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/lukas/carla/carla-apollo/catkin_ws/build" \
    "/home/lukas/apollo_env/bin/python" \
    "/home/lukas/carla/carla-apollo/catkin_ws/src/carla_manual_control/setup.py" \
    build --build-base "/home/lukas/carla/carla-apollo/catkin_ws/build/carla_manual_control" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/lukas/carla/carla-apollo/catkin_ws/install" --install-scripts="/home/lukas/carla/carla-apollo/catkin_ws/install/bin"
