#!/bin/sh

git clone https://github.com/fairyglade/ly.git
cd ly
zig build
sudo zig build installexe -Dinit_system=systemd
sudo systemctl enable ly@tty2.service
sudo systemctl disable getty@tty2.service
cd ..
rm -rf ly
