#!/bin/bash
# Times the screen off and puts it to background
swayidle \
    timeout 1 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &
# Locks the screen immediately
swaylock -c 1f1f1f
# Kills last background task so idle timer doesn't keep running
kill %%
