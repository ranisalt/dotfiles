# XDG base directories
set -q XDG_CACHE_HOME
  or set -x XDG_CACHE_HOME "$HOME/.cache"

set -q XDG_CONFIG_HOME
  or set -x XDG_CONFIG_HOME "$HOME/.config"

set -q XDG_DATA_HOME
  or set -x XDG_DATA_HOME "$HOME/.local/share"

function append -a VALUE
  contains "$VALUE" $_PATH $PATH
    or set -x _PATH "$VALUE" $_PATH
end

# Default programs
set -x BROWSER "firefox"
set -x SUDO_ASKPASS "$HOME/.local/bin/askpass"
set -x SUDO_EDITOR "nvim"

append "$HOME/.local/bin"
append "/usr/local/bin"

# CCache
set -x CCACHE_CONFIGPATH "$XDG_CONFIG_HOME/ccache/ccache.conf"
set -x CCACHE_DIR "$XDG_CACHE_HOME/ccache"
set -x CCACHE_SLOPPINESS "pch_defines,time_macros"
set -x CMAKE_CXX_COMPILER_LAUNCHER ccache

# Go
set -x GOPATH (go env GOPATH)
append "$GOPATH/bin"

# GTK
set -x GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# Java
set -x _JAVA_OPTIONS "
    -Dawt.useSystemAAFontSettings=on
    -Djdk.gtk.version=3
    -Dsun.java2d.opengl=true
    -Dswing.aatext=true
    -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel
"

# Javascript (Node, Yarn)
nvm use default
append "$HOME/.yarn/bin"

# Rust (Cargo)
append "$HOME/.cargo/bin"

set -x PATH $_PATH $PATH
