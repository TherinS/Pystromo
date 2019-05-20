#!/bin/bash
# This script can be run from a right click menu if your distro supports it.
# Place this script in your system scripts folder at
# ~/.local/share/nautilus/scripts OR
# ~/.gnome2/scripts OR
# ~/.local/caja/scripts
# (or whichever is appropriate for your distro).
# You could also run it from any folder, such as ~/myscripts.
#
# Selected variable will be the file selected from
# running the radiolist zenity script.
#
# next line sets the variable for where the map files are located
mapsloc=($HOME/software/pystromo/custom_maps)
#
# selected=$(ls ~/.config/caja/scripts -B | grep -E 'Tartarus*|n52*' \
# prior line was original, $mapsloc variable used per line below
# -B = ignore-backups (~)
# grep = search only for Tartarus and n52 launchers
selected=$(ls $mapsloc -B | grep -E 'Tartarus*|n52*' \
| sed 's/^/FALSE\n/g' | zenity --title "Pystromo maps" --text "Select a profile to load" \
--width 400 \
--height 475 \
--list --radiolist --column "Select one" \
--column "Profile name")
#
if [ $? = 1 ]; then exit
fi
# cd ~/.config/caja/scripts && ./$selected &
# prior line was original, $mapsloc variable used per next line
# OLD - uncomment for use = cd $mapsloc && ./$selected &
kill $(ps aux | grep 'pystromo-remap.py' | awk '{print $2}')
#
notify-send -u normal "$selected keymap"
#
cd $HOME/software/pystromo
./pystromo-remap.py -m ./custom_maps/$selected
