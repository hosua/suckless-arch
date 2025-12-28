#!/bin/sh

INSTALL_DIR="$HOME/dev"

mkdir -p "$INSTALL_DIR"

# install yay
./scripts/helpers/yay-install.sh

# install all pacman dependencies
./scripts/helpers/pacman-install-list.sh

# clone configs and move them to $HOME
git clone https://github.com/hosua/configs.git

pushd configs
cp -r .config .bash_aliases .Xauthority $HOME
popd || exit

cp -r .config/qutebrowser $HOME/.config
cp .bashrc .xinitrc $HOME

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

pushd surf 
sudo make install
popd || exit

