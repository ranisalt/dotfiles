#!/usr/bin/env sh
[ ! -d "$XDG_CONFIG_HOME/systemd/user" ] && mkdir -pv "$XDG_CONFIG_HOME/systemd/user"

for i in *.service; do
  ${RSYNC} "$PWD/$i" "$XDG_CONFIG_HOME/systemd/user/$i"
done
