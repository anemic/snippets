#!/bin/sh

if [ $# -ne 22 ]; then
    echo 1>&2 Usage: $0 expected 22 arguments
    exit 127
fi

TARGET=${1}
VALUE=${2}
DURATION=${3}
CURRENT_VALUE=${4}

POSTFIX="%"
if [ "$TARGET" == "FPS" ]; then
    POSTFIX=" fps"
elif [ "$TARGET" == "CPU Temperature Avg" ]; then
    POSTFIX=" °C"
elif [ "$TARGET" == "CPU Temperature Max" ]; then
    POSTFIX=" °C"
elif [ "$TARGET" == "GPU Temperature Avg" ]; then
    POSTFIX=" °C"
elif [ "$TARGET" == "GPU Temperature Max" ]; then
    POSTFIX=" °C"
elif [ "$TARGET" == "Disk Read I/O" ]; then
    POSTFIX=" bytes/sec"
elif [ "$TARGET" == "Disk Write I/O" ]; then
    POSTFIX=" bytes/sec"
elif [ "$TARGET" == "Net Read I/O" ]; then
    POSTFIX=" bytes/sec"
elif [ "$TARGET" == "Net Write I/O" ]; then
    POSTFIX=" bytes/sec"
fi
MESSAGE="Target trigger '$TARGET' has reached threshold of $VALUE$POSTFIX for $DURATION seconds"

/usr/local/bin/growlnotify --appIcon atMonitor "atMonitor trigger" -m "$MESSAGE" &

exit 0
