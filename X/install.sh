#!/usr/bin/env sh
${RSYNC} "$PWD/compton.conf" "$XDG_CONFIG_HOME/compton.conf"
${RSYNC} "$PWD/xinitrc" "$HOME/.xinitrc"
${RSYNC} "$PWD/Xresources" "$HOME/.Xresources"
