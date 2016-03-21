#!/usr/bin/env sh
[ -z "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME=$HOME/.config
export RSYNC="rsync -a --info=NAME1 --info=NAME2 --exclude 'install.sh'"

for i in bash fish gtk i3 ncmpcpp systemd X vim; do
  cd $i || exit
  echo "Installing $i files..."
  sh install.sh
  echo
  cd - > /dev/null || exit
done

echo "Done!"
