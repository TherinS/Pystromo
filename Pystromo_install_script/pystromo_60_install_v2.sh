#!/bin/bash
# Run this script AS ROOT in the folder with the
#   pystromo-0.6.0.tar.gz file
# This script will install pystromo only for current user
# The program is so small you can install separately for each user.
#
#       *** IMPORTANT ***
# Set the name in quotes below to the current user, which
# you can find by typing "echo $USER" into terminal, no quotes,
# or replace 'guest' with the username you are installing for.
myuser="steveum-ssd"
echo $myuser
# Create pystromo program folder path if it does not exist (-p)
# and untar the pystromo.tar.gz to that folder.
# Change the path in quotes to whereever you want it installed.
install_path="$HOME/software"
mkdir -p $install_path
tar xvf pystromo-0.6.0.tar.gz -C $install_path
mkdir $install_path/pystromo/custom_maps
#
# Change folder permission recursively
chmod -R 777 $install_path/pystromo
chown -R $myuser: $HOME/software
#
# Move system files to proper locations
# and reload rules for pystromo so it runs the deamon at startup.
# Not needed for additional users on the same system, maybe?
echo 'uinput' >> /etc/modules
modprobe uinput
cp $install_path/pystromo/config/52-pystromo-debian.rules /etc/udev/rules.d/
udevadm control --reload-rules
udevadm trigger
