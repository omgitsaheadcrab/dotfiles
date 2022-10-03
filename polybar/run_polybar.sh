#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch top and bottom
FC_DEBUG=0 polybar -c ~/.config/polybar/simple-black top-left &
FC_DEBUG=0 polybar -c ~/.config/polybar/simple-black bottom-left &
FC_DEBUG=0 polybar -c ~/.config/polybar/simple-black top-right &
FC_DEBUG=0 polybar -c ~/.config/polybar/simple-black bottom-right &

echo "Bars launched..."
