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
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/meet/agribot_ws/src/gps_umd/gps_common"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/meet/agribot_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/meet/agribot_ws/install/lib/python2.7/dist-packages:/home/meet/agribot_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/meet/agribot_ws/build" \
    "/usr/bin/python2" \
    "/home/meet/agribot_ws/src/gps_umd/gps_common/setup.py" \
    build --build-base "/home/meet/agribot_ws/build/gps_umd/gps_common" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/meet/agribot_ws/install" --install-scripts="/home/meet/agribot_ws/install/bin"
