#!/usr/bin/env sh
[ -z "$XDG_CONFIG_HOME" ] && export XDG_CONFIG_HOME=$HOME/.config
export RSYNC="rsync -a --info=NAME1 --exclude 'install.sh'"

echo "Installing config files..."
eval "${RSYNC} ${PWD}/config ${HOME}/.config"

for i in bash fish gtk i3 ncmpcpp systemd X vim; do
  cd $i || exit
  echo "Installing ${i} files..."
  sh install.sh
  cd - > /dev/null || exit
done

echo "Done!"
