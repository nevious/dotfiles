#!/usr/bin/env bash
#
# Add a new mode to scale tiny 4k displays to a more reasonable size.
# This is not needed if the default scaling is A-OK.
#
# man(1):
#      --newmode name mode
#            New modelines can be added to the server and then associated with outputs.  This option
#            does the former.  The mode is specified using the ModeLine syntax for xorg.conf:  clock
#            hdisp  hsyncstart hsyncend htotal vdisp vsyncstart vsyncend vtotal flags.  flags can be
#            zero or more of +HSync, -HSync, +VSync, -VSync, Interlace, DoubleScan,  CSync,  +CSync,
#            -CSync.   Several  tools  compute  the usual modeline from a height, width, and refresh
#            rate, for instance you can use cvt(1).
#

xrandr --newmode "1920x1200_60.00" 193.25  1920 2056 2256 2592  1200 1203 1209 1245 +hsync -vsync
xrandr --addmode eDP-1 "1920x1200_60.00"
xrandr --output eDP-1 --mode "1920x1200_60.00"
