# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Trixie theme config
set fish_prompt_pwd_dir_length 1
set theme_display_pyenv yes

# vi mode
fish_vi_key_bindings
