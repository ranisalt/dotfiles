# XDG base directories
set -q XDG_CACHE_HOME
  or set -x XDG_CACHE_HOME "$HOME/.cache"

set -q XDG_CONFIG_HOME
  or set -x XDG_CONFIG_HOME "$HOME/.config"

set -q XDG_DATA_HOME
  or set -x XDG_DATA_HOME "$HOME/.local/share"

function append_path -a VALUE
  contains "$VALUE" $PATH
    or set -x PATH "$VALUE" $PATH
end

append_path "$HOME/.local/bin"
append_path "/usr/local/bin"

# CCache
set -x CCACHE_CONFIGPATH "$XDG_CONFIG_HOME/ccache/ccache.conf"
set -x CCACHE_DIR "$XDG_CACHE_HOME/ccache"
set -x CCACHE_SLOPPINESS "pch_defines,time_macros"
set -x CMAKE_CXX_COMPILER_LAUNCHER ccache

# Go
set -x GOPATH (go env GOPATH)
append_path "$GOPATH/bin"

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
append_path "$HOME/.yarn/bin"

# Rust (Cargo)
append_path "$HOME/.cargo/bin"
