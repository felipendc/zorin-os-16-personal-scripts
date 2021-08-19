#!/bin/bash
# github.com/felipendc


# Refreshing the repo and upgrading the system:
sudo apt-get update
sudo apt-get upgrade

### ADDING A PPA TO INSTALL PYTHON: ###
sudo add-apt-repository ppa:deadsnakes/nightly
sudo apt update

# Installing do Pyhon3:
sudo apt install python3.11 -y
sudo apt install python3.10 -y

# Setting up the default Python version:
#sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1


#### Vicyos Personal packages: ####

#songrec
sudo apt-add-repository ppa:marin-m/songrec -y -u
sudo apt-get update
sudo apt install songrec -y

sudo apt install software-properties-common
sudo apt install flatpak -y
sudo apt-get install openjdk-8-jdk
sudo apt install pavucontrol -y
sudo apt install rclone -y
sudo apt install unrar -y
sudo apt install brasero -y
sudo apt install gnome-tweaks -y
sudo apt install simplescreenrecorder -y
sudo apt install xsensors -y
sudo apt install gnome-disk-utility -y
sudo apt install gparted -y
sudo apt install hardinfo -y
sudo apt install gufw -y
sudo apt install repo -y
sudo apt install pyhton3 -y
sudo apt install python3-pip -y
sudo apt install python-pip -y
sudo apt install winff -y
sudo apt install adb 
sudo apt install fastboot 


############# FLATHUB PACKAGES ################
sudo flatpak install flathub -y com.obsproject.Studio
sudo flatpak install -y flatpak/com.discordapp.Discord.flatpakref
sudo flatpak install -y flatpak/net.codeindustry.MasterPDFEditor.flatpakref
sudo flatpak install -y flatpak/org.gimp.GIMP.flatpakref
sudo flatpak install -y flatpak/org.kde.kdenlive.flatpakref
sudo flatpak install -y flatpak/org.kde.krita.flatpakref
sudo flatpak install -y flatpak/org.qbittorrent.qBittorrent.flatpakref
sudo flatpak install -y flatpak/org.telegram.desktop.flatpakref
sudo flatpak install -y flatpak/org.videolan.VLC.flatpakref
sudo flatpak install -y flatpak/fr.handbrake.ghb.flatpakref
sudo flatpak install -y flatpak/org.filezillaproject.Filezilla.flatpakref
sudo flatpak install -y flatpak/org.inkscape.Inkscape.flatpakref
sudo flatpak install -y flatpak/com.gitlab.bitseater.meteo.flatpakref
sudo flatpak install -y flatpak/org.onlyoffice.desktopeditors.flatpakref
sudo flatpak install -y flatpak/com.hamrick.VueScan.flatpakref


# Installing any pkgs dependencies:
sudo apt install -f


# Auto removing unnecessary packages:
sudo apt autoremove


# Copying all of the files and dotfiles to the HOME folder:
cd root_files
cp -r * ~/
cp -r .[a-zA-Z0-9]* ~/
cd ../


# Installing Fire_DM (Internet Download Manager):
cd Fire_DM
./install_Fire_DM.sh
cd ../


# OBS-STUDIO CONFIG FILES:
cd config_files
cp -r * ~/.config
cd ../


#########################################
### Run scripts and install packages ####
#########################################

# Setting up Android Build Environment:
#cd android-build-environment-setup && sudo chmod +x *.sh && ./android_build_env.sh && cd ../

# Move my personal .bashrc file to my HOME folder:
cd ubuntu-personal-bashrc && sudo cp -r .bashrc* ~/ && cd ../

# Installing Google-Chrome Browser:
cd random && sudo apt install ./google-chrome-stable_current_amd64.deb -y --allow-downgrades && cd ../

# Installing Visual Studio Code:
cd random && sudo apt install ./code*.deb -y --allow-downgrades && cd ../


# Installing Intel Screen Tearing fix, just in case you are using: Intel® HD Graphics
#cd vicyos-ubuntu-screen-tearing-for-intel-fix && sudo chmod +x *.sh && sudo sh ./vicyos-install-linux-screen-tearing-fix.sh && cd ../


# INSTALLING CODE EXTENTIONS:
code --install-extension ms-vscode.cpptools
code --install-extension nico-castell.linux-desktop-file
code --install-extension erikphansen.vscode-toggle-column-selection
code --install-extension ritwickdey.LiveServer
code --install-extension DigitalBrainstem.javascript-ejs-support
code --install-extension dbaeumer.vscode-eslint
code --install-extension hex-ci.stylelint-plus
code --install-extension formulahendry.auto-close-tag
code --install-extension esbenp.prettier-vscode
code --install-extension ms-python.vscode-pylance
code --install-extension donjayamanne.python-extension-pack
code --install-extension almenon.arepl
code --install-extension PKief.material-icon-theme
code --install-extension Dart-Code.dart-code
code --install-extension naumovs.color-highlight
code --install-extension akamud.vscode-theme-onedark
code --install-extension Dart-Code.flutter
code --install-extension alexisvt.flutter-snippets
code --install-extension Gruntfuggly.todo-tree
code --install-extension CoenraadS.bracket-pair-colorizer-2
code --install-extension will-stone.plastic
code --install-extension TabNine.tabnine-vscode
# code --install-extension Nash.awesome-flutter-snippets
# code --install-extension file-icons.file-icons


# LOOKING FOR UPDATE FOR ALL THE PACKAGES:
sudo apt update
sudo apt upgrade -y
sudo apt install -f
sudo apt autoremove

# Reminder:
gedit How_to_setup_rclone.txt
