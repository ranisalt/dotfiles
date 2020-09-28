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
set -x NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"
set -x NVM_DIR "$XDG_CONFIG_HOME/nvm"
append "$HOME/.yarn/bin"

# Rust (cargo)
set -x CARGO_HOME "$XDG_DATA_HOME/cargo"
type -q sccache
  and set -x RUSTC_WRAPPER sccache
set -x RUSTUP_HOME "$XDG_DATA_HOME/rustup"
append "$CARGO_HOME/bin"

set -x PATH $_PATH

type -q starship
  and starship init fish | source
dircolors -c "$XDG_CONFIG_HOME/dir_colors" | source
