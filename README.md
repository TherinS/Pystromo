# Pystromo

Pystromo is a non-gui key remapping python program created in Python2 (not by me).  It uses the USB ID found by typing
$ lsusb
in the terminal.  Pystromo is used to bind any keyboard key to the input on any USB device, thus remapping
the input function of the device to any key on a keyboard.  If the USB device does not respond at all once
plugged in (testing in a text editor should suffice) then Pystromo probably will not remap keys for that device.

For example, the Logitech G13 gameboard is recognized and returns a USB device code of 046d:0a44, but
no keypresses do anything on Ubuntu 16.04 or 18.04.  There are other projects for the G13 that do work.

Currently, this space is just to corral various links to files pertaining to the use of
the Belkin Nostromo or Razer series of gameboards.

Both use config files (.map) to reassign keys.
Original Pystromo 0.6.0 links

-https://launchpad.net/pystromo

-https://github.com/byrongibson/Pystromo
  - Supports macros, easy to configure!
  - Fails to work right on Ubuntu 18.04 but works great on 16.04 (help?)
  - https://askubuntu.com/questions/1107093/python-script-for-nostromo-razer-tartarus-fails-after-upgrade-to-18-04

==========
The Python3 version errors with unable to find Python modules, and the conversion to Python3 is incomplete.

https://github.com/booms8/Pystromo

==========
Nice GUI program but no macro support

https://sites.google.com/site/keyboardingmaster/

  -Install file is over 150MB so I couldn't upload it

The Belkin and Razer series of gameboards do not have key re-binding support with the Openrazer project,
though most of the Razer full keyboards do, and that project has active development. 2018-01-07
