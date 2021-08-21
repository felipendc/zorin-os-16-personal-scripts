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


# Removing the temp folder if it exist
if [ -d "temp_files" ]; then 
    rm -R temp_files
fi

# Creating and accessing the tempo_files folder
mkdir temp_files
cd temp_files

# Creating the FireDM deskto file and appending its specs
cat >> firedm.desktop <<EOF
echo "[Desktop Entry]"
Type=Application
Version=1.0
Name=FireDM
Comment=Python open source alternative to IDM
Path=/usr/bin
Exec=firedm
Icon=firedm
Terminal=false
Categories=Utility;AudioVideo;Network;
Keywords=Internet;download
EOF


# Copying the .desktop to its proper folder
sudo cp -R $(pwd)/firedm.desktop /usr/share/applications/firedm.desktop

# Copying the icon to its proper folder
icon_folder="~/.local/share/icons/hicolor/48x48/apps"
if [ ! -d "$icon_folder" ]; then 
    mkdir -p $icon_folder
fi

# cp -R ../icons/firedm.png ~/.local/share/icons/hicolor/48x48/apps/firedm.png
# sudo cp -R ../icons/firedm.png /usr/share/icons/hicolor/48x48/apps/firedm.png

cp -R ../icons/firedm.png ~/.local/share/icons/hicolor/48x48/apps/firedm.png
sudo cp -R ../icons/firedm.png /usr/share/pixmaps/iredm.png

# Updating the icons cache:
sudo gtk-update-icon-cache /usr/share/icons/hicolor/
sudo gtk-update-icon-cache

# Going back to the parent folder
cd ../

# Removing the temp folder if it exist
if [ -d "temp_files" ]; then 
    rm -R temp_files
fi

# TO WRAP IT UP, YOU WILL NEED TO REBOOT THE COMPUTER, SO THAT, 
# THE ICON WILL SHOW UP ON THE APLICATIONS MENU.
