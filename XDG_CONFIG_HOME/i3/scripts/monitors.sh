#!/usr/bin/env bash
primary_monitor=$(xrandr | grep primary | awk '{ print $1 }')

killall -q polybar

sleep 0.2
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

for MONITOR in $(polybar --list-monitors | cut -d":" -f1); do
  if [ "$primary_monitor" = "$MONITOR" ]; then
    MONITOR=$MONITOR /usr/bin/polybar primary -r&
  else
    MONITOR=$MONITOR /usr/bin/polybar other -r&
  fi
done
