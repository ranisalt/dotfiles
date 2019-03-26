#!/usr/bin/env sh
xrandr --output VGA-1 --auto --left-of LVDS-1
nitrogen --restore
xset dpms 0 0 0
systemctl --user start pcmanfm.service
