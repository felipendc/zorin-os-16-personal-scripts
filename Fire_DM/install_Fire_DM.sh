#!/bin/bash 
# Github source code link:
# https://github.com/firedm/FireDM

# This script has been adapted to suit my needs (Vicyos / Felipe Ndc)

# Manually installing FireDM with pip

sudo apt install -y \
    ffmpeg \
    libcurl4-openssl-dev \
    libssl-dev \
    python3-pip \
    python3-pil \
    python3-pil.imagetk \
    python3-tk \
    python3-dbus \
    gir1.2-appindicator3-0.1

sudo apt install -y \
    fonts-symbola \
    fonts-linuxlibertine \
    fonts-inconsolata \
    fonts-emojione


# Installing FireDM
python3 -m pip install firedm --user --upgrade --no-cache
sudo cp -R $(pwd)/firedm.desktop /usr/share/applications/firedm.desktop


# Copying the icon to its proper folder
sudo cp -R icons/firedm.png /usr/share/pixmaps/firedm.png


# Updating the icons cache:
sudo gtk-update-icon-cache /usr/share/icons/hicolor/
sudo gtk-update-icon-cache
xdg-desktop-menu forceupdate --mode system


# TO WRAP IT UP, YOU WILL NEED TO REBOOT THE COMPUTER, SO THAT, 
# THE ICON WILL SHOW UP ON THE APLICATIONS MENU.
