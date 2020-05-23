# Pystromo

Pystromo is a non-gui key remapping program created in Python2 (not by me), originally for the Belkin Nostromo gameboards, but works with the Razr series and various USB input devices.  Pystromo is used to bind any keyboard key to the input on any other USB device, thus remapping
the input function of the device to any key on a keyboard.  It uses the USB ID (found by typing
$ lsusb
in the terminal) to bind a map file to that USB device.  If the USB device does not respond at all upon first
plugging it in (testing in a text editor should suffice) then Pystromo probably will not remap keys for that device.

For example, the Logitech G13 gameboard is recognized and returns a USB device code of 046d:0a44, but
no keypresses do anything on Ubuntu 16.04 or 18.04.  There are other projects for the G13 that do work, and Ubuntu 20.04 is supposed to now have a basic native driver for this device.

Currently, this space is just to corral various links to files pertaining to the use of
the Belkin Nostromo or Razer series of gameboards.

==========
**Some details about Pystromo:

-is a user-space program (does not require sudo to run).

-can be ran via scripts, terminal, or the right-click script menu

-starts up instantly

-has no discernable input lag

-works great in Ubuntu 16.04 (and derivatives) but ceases to work in 18.04

-is less than 1MB in size, since all the Python libraries are usually already installed

-has alternate key functions. That is, you can program a key to enable a secondary map of the device, with up to 3 different layouts. Maybe it can do more but I've not tried.

-has macro support, supposedly of unlimited length, though I've rarely used macros with the device.

-mapping files are human readable

==========

Original Pystromo 0.6.0 links

-https://launchpad.net/pystromo

-https://github.com/byrongibson/Pystromo

==========  Now the issues:

-currently only has a functional Python2 version

-lacks a gui

 The Worst Part:
 
Pystromo does not work right for me in Ubuntu 18.04, when it worked great in Ubuntu 16.04 and flavors. Python2
is installed (v 2.7.17) alongside Python3.  However, Pystromo functions right on live disks of Zorin 12, Ubuntu MATE 16.04, and Linux Mint 18.3.  I have verified it does not work right on a fresh 18.04 install on a laptop, a live USB version, and my main computer running Ubuntu 18.04.

Pystromo actually DOES run fine, as it shows up as a running process in System Monitor and it seems to grab the input from any device I use.  Those devices include:

-Belkin Nostromo n50

-Belkin Nostrom n52

-Razr Tartarus

-Razr Orbweaver Chroma

-Sony DualShock 4 controller (plugged in, does not work for me using bluetooth connection)

-Dell basic mouse

What happens, or rather does NOT happen, is Pystromo does not output the keybindings from any .map file made for Pystromo.  There is an output test script used to determine what each key or input is called for populating the .map file and that works fine in every distro I've tested (even PCLOS), so that part works.

==========
The Python3 version (Pystromo-0.6.1) DOES NOT WORK!  It returns errors with unable to find Python modules, and the conversion to Python3 is incomplete.

https://github.com/booms8/Pystromo

==========
Nice GUI program but no macro support

https://sites.google.com/site/keyboardingmaster/

  -Install file is over 150MB so I couldn't upload it

The Belkin and Razer series of gameboards do not have key re-binding support with the Openrazer project,
though most of the Razer full keyboards do, and that project has active development. 2018-01-07
