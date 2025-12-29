#!/bin/sh

set -e

if [ "$(id -u)" -eq 0 ]; then
	echo "Error: This script should not be run as sudo."
	exit 1
fi

git submodule update --init

# install yay
./scripts/helpers/yay-install.sh

# install all pacman dependencies
./scripts/helpers/pacman-install-list.sh

# install and enable docker daemon
./scripts/helpers/setup-docker.sh

pushd configs
cp -r .config .bash_aliases $HOME
popd || exit

cp -r .config/qutebrowser $HOME/.config
cp .bashrc .xinitrc .Xauthority $HOME

# install suckless tools

pushd dwm
sudo make install
popd || exit

pushd dmenu
sudo make install
popd || exit

pushd dwmblocks
sudo make install
popd || exit

pushd st
sudo make install
popd || exit

# I prefer qutebrowser over surf, but we'll install my build anyway
pushd surf
sudo make install
popd || exit

# install ly
./scripts/helpers/ly-install.sh # TODO add this as submoulde
# Add desktop entry for ly desktop manager to show dwm
sudo cp ./usr/share/xsessions/dwm.desktop /usr/share/xsessions

reboot
