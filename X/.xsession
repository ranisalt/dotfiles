#!/usr/bin/env sh
xrandr --output VGA-1 --auto --right-of LVDS-1
xset dpms 0 0 0
systemctl --user start compton.service nitrogen-restore.service pcmanfm.service redshift.service xss-lock.service
