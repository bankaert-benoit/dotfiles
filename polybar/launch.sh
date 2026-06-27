#! /bin/sh

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main_top &
polybar secondary_top &
