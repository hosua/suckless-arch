#!/bin/sh
case "$1" in
    1) pactl set-sink-mute   @DEFAULT_SINK@ toggle ;;
    3) pactl set-sink-volume @DEFAULT_SINK@ 50% ;;
    4) pactl set-sink-volume @DEFAULT_SINK@ +5% ;;
    5) pactl set-sink-volume @DEFAULT_SINK@ -5% ;;
esac
pkill -RTMIN+2 dwmblocks
