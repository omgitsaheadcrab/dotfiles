#!/usr/bin/env sh

PID=$(pgrep "pavucontrol")
if [ "$?" -eq "0" ]; then
    kill $PID
else
    pavucontrol
fi
