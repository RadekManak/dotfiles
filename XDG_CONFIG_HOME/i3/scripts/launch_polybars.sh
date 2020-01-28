#!/usr/bin/env bash
primary_monitor=$(xrandr | grep primary | awk '{ print $1 }')

killall -q polybar

sleep 0.2
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

first=true
for MONITOR in $(polybar --list-monitors | cut -d":" -f1); do
  if [ $first = true ]; then
    MONITOR=$MONITOR /usr/bin/polybar primary -r&
    first=false
  else
    MONITOR=$MONITOR /usr/bin/polybar other -r&
  fi
done
