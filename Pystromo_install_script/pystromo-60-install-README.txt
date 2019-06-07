Use this as a guide to install pystromo-0.6.0.tar.gz

        ** for Ubuntu MATE 16.04 **
Put the following files into a folder together:
pystromo-0.6.0.tar.gz
pystromo_60_install_v2.sh
Pystromo-60-launcher.desktop
Pystromo-60-map-picker-v3.sh
nostromo-001.jpeg

1)In a terminal, cd to the folder with those files in it.

2)Open pystromo_60_install_v2.sh in a text editor and change
    the line under *** IMPORTANT *** to reflect the name of
    the user you are installing Pystromo for and save.
	-Get user from terminal by:
    $ echo $USER
	-Or insert the username to be installed to into the quotes.

3)Run pystromo_60_install_v2.sh as root
	You may need to make it executable first:
	$ sudo chmod +x pystromo_60_install_v2.sh

To create a launcher in Application menus (optional):
4)Copy Pystromo-60-launcher.desktop to $HOME/.local/share/applications
	-You may need to create the 'applications' folder first:
    $ mkdir -p $HOME/.local/share/applications
    $ cp Pystromo-60-launcher.desktop $HOME/.local/share/applications
	-You may need to make it executable:
	$ sudo chmod +x $HOME/.local/share/applications/Pystromo-60-launcher.desktop

To create a right-click script launcher in Caja for the map picker (optional):
(Edit the path as necessary for your file manager)
5)Copy Pystromo-60-map-picker-v3.sh to $HOME/.config/caja/scripts
    $ mkdir -p $HOME/.config/caja/scripts
    $ cp Pystromo-60-map-picker-v3.sh $HOME/.config/caja/scripts
	-You may need to make it executable with:
	$ sudo chmod +x $HOME/.config/caja/scripts/Pystromo-60-map-picker-v3.sh

For the Application menu to display an icon (recommended if you created a launcher):
6)Copy nostromo-001.jpeg to
    $HOME/Pictures/icons
	-You may need to create the 'icons' folder first:
    $ mkdir -p $HOME/Pictures/icons
    $ cp nostromo-001.jpeg $HOME/Pictures/icons

Log out and back in to populate the Applications menu
    with the .desktop launcher for Pystromo.


        ** for PCLinuxOS **

Put the following files into a folder together:
pystromo-0.6.0.tar.gz
pystromo_60_install_v2.sh  (PCLinuxOS version!)
Pystromo-60-launcher.desktop
-Pystromo-60-map-picker-caja-v3.sh OR
-Pystromo-60-map-picker-generic-v3.sh
nostromo-001.jpeg

1) As above

2) Open pystromo_60_install_v2.sh in a text editor and change
    the line under *** IMPORTANT *** to reflect the name of
    the user you are installing Pystromo for and save.
	-Get user from terminal by:
    $ echo $USER
	-Insert the username to be installed to into the quotes.

3)Run pystromo_60_install_v2.sh as root
	$ su
	$ pystromo_60_install_v2.sh
	You may need to make it executable:
	$ chmod +x pystromo_60_install_v2.sh

4)Copy Pystromo-60-launcher.desktop to $HOME/.local/share/applications
	-You may need to create the 'applications' folder first:
    $ mkdir -p $HOME/.local/share/applications
    $ cp Pystromo-60-launcher.desktop $HOME/.local/share/applications
	-You may need to make it executable (AS ROOT) with:
	$ chmod +x /home/<user>/.local/share/applications/Pystromo-60-launcher.desktop

5)Copy Pystromo-60-map-picker-v3.sh to $HOME/myscripts
    $ mkdir -p $HOME/myscripts
    $ cp Pystromo-60-map-picker-v3.sh $HOME/myscripts
	-You may need to make it executable (AS ROOT) with:
	$ chmod +x /home/<user>/myscripts/Pystromo-60-map-picker-v3.sh

6)Copy nostromo-001.jpeg to
    $HOME/Pictures/icons
	-You may need to create the 'icons' folder first:
    $ mkdir -p $HOME/Pictures/icons
    $ cp nostromo-001.jpeg $HOME/Pictures/icons

Log out and back in to populate the Applications menu
    with the .desktop launcher for Pystromo.
