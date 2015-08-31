#!/usr/bin/fish
if [ -z "$XDG_CONFIG_HOME" ]
	set -x XDG_CONFIG_HOME $HOME/.config
end

for i in bash conky fish gtk i3 ncmpcpp systemd X vim
  pushd $i
  echo "Linking $i files..."
  sh install.sh
  echo
  popd
end

echo "Done!"
