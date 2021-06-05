dwm - dynamic window manager
============================
dwm is an extremely fast, small, and dynamic window manager for X.

Screenshots
-----------
![screenhost](https://user-images.githubusercontent.com/69723902/115807383-883ce680-a3b6-11eb-8014-538efec6d767.png)


Patches
-------
+ statuscmd
+ systray
+ attach below 
+ center
+ bar height
+ vanity gaps
+ gapless grid mode
+ scratchpads
+ pertag
+ pertag vanity gaps
+ swallow
+ steam patch 
+ cycle layouts
+ movestack
+ alwayscenter

Requirements
------------
In order to build dwm you need the Xlib header files.


Installation
------------

Enter the following command to build and install dwm (if
necessary as root):

    make clean install


Running dwm
-----------
Add the following line to your .xinitrc to start dwm using startx:

    exec dwm



Configuration
-------------
The configuration of dwm is done by creating editing the config.def.h
and (re)compiling the source code with:

    make clean install
    
Libraries 
---------
Swallow needs the following dependencies:
+ libxcb
+ Xlib-libxcb
+ xcb-res

How I applied my patches
------------------------
I used ![dwm-flexipatch](https://github.com/bakkeby/dwm-flexipatch) because I was running into issues with the some of the patches.
   
