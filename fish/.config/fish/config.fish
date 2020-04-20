# XDG base directories
set -q XDG_CACHE_HOME
  or set -x XDG_CACHE_HOME "$HOME/.cache"

set -q XDG_CONFIG_HOME
  or set -x XDG_CONFIG_HOME "$HOME/.config"

set -q XDG_DATA_HOME
  or set -x XDG_DATA_HOME "$HOME/.local/share"

set -l FLATPAK_DATA_DIRS "/var/lib/flatpak/exports/share:$XDG_DATA_HOME/flatpak/exports/share"
set -q XDG_DATA_DIRS
  and set -x XDG_DATA_DIRS "$XDG_DATA_DIRS:$FLATPAK_DATA_DIRS"
  or set -x XDG_DATA_DIRS "$FLATPAK_DATA_DIRS"


set _PATH "$HOME/.local/bin" "/usr/local/bin" $PATH
function append -a VALUE
  contains -- "$VALUE" $_PATH
    or set -p _PATH "$VALUE"
end

# Default programs
#set -x BROWSER "flatpak --user run org.mozilla.firefox"
set -x EDITOR "vim"
set -x SUDO_ASKPASS "systemd-ask-password"
set -x SUDO_EDITOR "$EDITOR"

# CCache
set -x CCACHE_CONFIGPATH "$XDG_CONFIG_HOME/ccache/ccache.conf"
set -x CCACHE_DIR "$XDG_CACHE_HOME/ccache"
set -x CMAKE_CXX_COMPILER_LAUNCHER ccache

# Go
append "$HOME/go/bin"

# GTK
set -x GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# Javascript (Node, Yarn)
append "$HOME/.yarn/bin"

# Rust (cargo)
append "$HOME/.cargo/bin"

set -x PATH $_PATH

# Qt/Wayland
set -x RADV_PERFTEST aco

starship init fish | source
