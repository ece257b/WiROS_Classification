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

echo_and_run cd "/home/wcsng-robot/ipsn_ws/src/wiros_processing_node"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/wcsng-robot/ipsn_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/wcsng-robot/ipsn_ws/install/lib/python3/dist-packages:/home/wcsng-robot/ipsn_ws/build/csi_tools/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/wcsng-robot/ipsn_ws/build/csi_tools" \
    "/usr/bin/python3" \
    "/home/wcsng-robot/ipsn_ws/src/wiros_processing_node/setup.py" \
    egg_info --egg-base /home/wcsng-robot/ipsn_ws/build/csi_tools \
    build --build-base "/home/wcsng-robot/ipsn_ws/build/csi_tools" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/wcsng-robot/ipsn_ws/install" --install-scripts="/home/wcsng-robot/ipsn_ws/install/bin"
