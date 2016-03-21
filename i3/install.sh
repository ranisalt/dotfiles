#!/usr/bin/env sh
${RSYNC} "$PWD/i3/" "$XDG_CONFIG_HOME/i3"
${RSYNC} "$PWD/i3blocks.conf" "$HOME/.i3blocks.conf"
