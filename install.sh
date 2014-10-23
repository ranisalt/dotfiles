#!/usr/bin/env sh
[ -z "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME="$HOME/.config"

for i in bash gtk i3 X vim
do
  \cd $i
  echo "Linking $i files..."
  sh install.sh
  echo
  \cd ..
done

echo "Done!"
