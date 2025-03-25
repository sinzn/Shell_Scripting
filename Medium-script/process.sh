#!/bin/bash
PROCESS="nginx"
if ! pgrep -x "$PROCESS" > /dev/null
then
    echo "$PROCESS not running. Restarting..."
    systemctl restart "$PROCESS"
fi
