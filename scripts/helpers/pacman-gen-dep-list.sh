#!/bin/sh
pacman -Qqe | grep -v "$(pacman -Qqm)" > pacman.lst
pacman -Qqm > pacman-aur.lst
