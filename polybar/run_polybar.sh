#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch top and bottom
polybar -c ~/.config/polybar/simple-black top &
polybar -c ~/.config/polybar/simple-black bottom &

echo "Bars launched..."
