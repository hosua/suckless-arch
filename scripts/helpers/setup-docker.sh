#!/bin/sh

sudo usermod -aG docker $USER
newgrp docker
sudo systemctl enable docker
