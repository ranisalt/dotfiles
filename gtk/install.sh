#!/usr/bin/env sh
[ ! -d "$XDG_CONFIG_HOME/gtk-3.0" ] && mkdir -pv "$XDG_CONFIG_HOME/gtk-3.0"
${RSYNC} "$PWD/gtk-2.0/gtkrc-2.0" "$HOME/.gtkrc-2.0"
${RSYNC} "$PWD/gtk-3.0/settings.ini" "$XDG_CONFIG_HOME/gtk-3.0/settings.ini"
