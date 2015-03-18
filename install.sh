#!/usr/bin/env sh
[ -z "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

for i in bash conky fish gtk i3 systemd X vim
do
  \cd $i
  echo "Linking $i files..."
  sh install.sh
  echo
  \cd ..
done

echo "Done!"
