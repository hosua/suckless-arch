#!/bin/sh

# installs yay then cleans up all repo files
git clone https://aur.archlinux.org/yay.git && \
pushd yay && \
makepkg -si && \
popd && \
rm -rf yay

