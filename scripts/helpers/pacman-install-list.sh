#!/bin/sh

# install official packages
sudo pacman -Syu --needed --noconfirm $(cat pacman.lst)

# install AUR packages
yay -S $(cat pacman-aur.lst)
