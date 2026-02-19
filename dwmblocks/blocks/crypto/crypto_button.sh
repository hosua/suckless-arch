#!/bin/sh
# Crypto widget click handler
# $1 = mouse button: 1=left, 2=middle, 3=right, 4=scroll-up, 5=scroll-down

SIGDWMBLOCKS="/home/hosua/dev/suckless-arch/dwmblocks/sigdwmblocks/sigdwmblocks"

case "$1" in
    1|2|3|4|5) "$SIGDWMBLOCKS" 3 ;;  # any click/scroll: force refresh
esac
