#!/bin/bash
xrandr --newmode "1368x768_60.00"   85.25  1368 1440 1576 1784  768 771 781 798 -hsync +vsync
xrandr --addmode VGA-0 "1368x768_60.00"
#xrandr --output VGA-0 --mode "1368x768_60.00"
xrandr --output VGA-0 --same-as LVDS --mode "1368x768_60.00"
xrandr --output LVDS --mode "1366x768"
