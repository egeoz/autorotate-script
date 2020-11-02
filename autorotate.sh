#!/bin/sh

> .sensor.log

monitor-sensor >> .sensor.log 2>&1 &

while inotifywait -e modify .sensor.log; do
ORIENTATION=$(tail -n 1 .sensor.log | grep 'orientation' | grep -oE '[^ ]+$')

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
