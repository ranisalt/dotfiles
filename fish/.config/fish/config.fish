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

if [ -z "$FLATPAK_ID" ]
  contains "$PATH" "$HOME/.local/bin"
    or set -x PATH "$HOME/.local/bin" $PATH
else
  contains "$PATH" "$HOME/.var/app/$FLATPAK_ID/bin"
    or set -x PATH "$HOME/.var/app/$FLATPAK_ID/bin" $PATH
end
