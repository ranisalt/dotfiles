set -x fish_greeting

# asdf
test -f '/opt/asdf-vm/asdf.fish'
  and source '/opt/asdf-vm/asdf.fish'

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

source /opt/asdf-vm/asdf.fish
