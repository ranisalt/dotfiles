\mkdir -p "$XDG_CONFIG_HOME/gtk-3.0"
ln -sfv "$PWD/gtk-2.0/gtkrc-2.0" "$HOME/.gtkrc-2.0"
ln -sfv "$PWD/gtk-3.0/settings.ini" "$XDG_CONFIG_HOME/gtk-3.0/settings.ini"
