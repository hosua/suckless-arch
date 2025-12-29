#!/bin/bash

# For shared clipboard VM. Disable this if running on real hardware
xhost +SI:localuser:$USER
spice-vdagent &

# Adjust for your hardware
xrandr --output Virtual-1 --mode 1920x1080 &

exec dwm
