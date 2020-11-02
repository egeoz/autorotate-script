#!/bin/sh

> /tmp/sensor.log

monitor-sensor >> /tmp/sensor.log 2>&1 &

while inotifywait -e modify /tmp/sensor.log; do
ORIENTATION=$(tail -n 1 /tmp/sensor.log | grep 'orientation' | grep -oE '[^ ]+$')

case "$ORIENTATION" in
normal)
xrandr -o normal ;;
bottom-up)
xrandr -o inverted ;;
right-up)
xrandr -o right ;;
left-up)
xrandr -o left ;;
esac
done
