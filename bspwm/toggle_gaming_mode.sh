#!/usr/bin/env bash

STATE_FILE="$HOME/.cache/bspwm_gaming_mode"

if [ -f "$STATE_FILE" ]; then
    # ======================
    # EXIT GAMING MODE
    # ======================

    rm "$STATE_FILE"

    polybar-msg cmd show

    bspc config border_width 2
    bspc config window_gap 12

    notify-send "Gaming mode OFF"

else
    # ======================
    # ENTER GAMING MODE
    # ======================

    touch "$STATE_FILE"

    polybar-msg cmd hide

    bspc config border_width 0
    bspc config window_gap 0

    notify-send "Gaming mode ON"
fi
