#!/bin/bash

# github.com/felipendc

# Create installation folder:
sudo mkdir -p /etc/X11/xorg.conf.d/

# Move the file to the proper folder:
sudo cp -p 20-intel.conf /etc/X11/xorg.conf.d/

# Reboot to refresh settings:
#reboot
