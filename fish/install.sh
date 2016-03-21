#!/uysr/bin/env sh
[ ! -d "$XDG_CONFIG_HOME/fish" ] && mkdir -pv "$XDG_CONFIG_HOME/fish"
${RSYNC} "$PWD/" "$XDG_CONFIG_HOME/fish"
