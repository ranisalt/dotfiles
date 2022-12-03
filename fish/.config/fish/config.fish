set -x fish_greeting

set -q XDG_CONFIG_HOME
  or set -x XDG_CONFIG_HOME "$HOME/.config"

set -q XDG_DATA_HOME
  or set -x XDG_DATA_HOME "$HOME/.local/share"

set -l FLATPAK_DATA_DIRS "/var/lib/flatpak/exports/share:$XDG_DATA_HOME/flatpak/exports/share"
set -q XDG_DATA_DIRS
  and set -x XDG_DATA_DIRS "$XDG_DATA_DIRS:$FLATPAK_DATA_DIRS"
  or set -x XDG_DATA_DIRS "$FLATPAK_DATA_DIRS"

set PATH "$HOME/.local/bin" "/usr/local/bin" $PATH
function prepend -a VALUE
  contains -- "$VALUE" $PATH
    or set -p PATH "$VALUE"
end
function append -a VALUE
  contains -- "$VALUE" $PATH
    or set -a PATH "$VALUE"
end

test -x /opt/homebrew/bin/brew
  and eval "$(/opt/homebrew/bin/brew shellenv)"

# Default programs
set -x EDITOR "vim"
set -x SUDO_ASKPASS "systemd-ask-password"
set -x SUDO_EDITOR "$EDITOR"

# Android
set -x ANDROID_HOME "$HOME/Library/Android/sdk"
append "$ANDROID_HOME/tools"
append "$ANDROID_HOME/platform-tools"

# asdf
test -f '/opt/asdf-vm/asdf.fish'
  and source '/opt/asdf-vm/asdf.fish'

# GTK
set -x GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# Javascript (Node, Yarn)
set -x NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"
set -x ASDF_DATA_DIR "$XDG_CONFIG_HOME/asdf"
set -x ASDF_CONFIG_FILE "$ASDF_DIR/asdfrc"
set -x ASDF_NPM_DEFAULT_PACKAGES_FILE "$ASDF_DIR/default-npm-packages"
prepend "$HOME/.yarn/bin"

source (brew --prefix asdf)/libexec/asdf.fish

# Rust (cargo)
set -x CARGO_HOME "$XDG_DATA_HOME/cargo"
prepend "$CARGO_HOME/bin"
set -x RUSTUP_HOME "$XDG_DATA_HOME/rustup"

# vim
set -x VIMINIT 'if !has("nvim") | let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | so $MYVIMRC | endif'

type -q direnv
  and direnv hook fish | source
type -q starship
  and starship init fish | source
test -f "$XDG_CONFIG_HOME/dir_colors"
  and dircolors -c "$XDG_CONFIG_HOME/dir_colors" | source

type -q sccache
  and set -x CMAKE_CXX_COMPILER_LAUNCHER sccache
  and set -x RUSTC_WRAPPER sccache
