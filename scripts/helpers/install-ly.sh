#!/bin/sh

# clones, installs, and enables ly as our desktop manager

pushd ly
zig build
sudo zig build installexe -Dinit_system=systemd
sudo systemctl enable ly@tty2.service
