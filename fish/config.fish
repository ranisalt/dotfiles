# Path to your oh-my-fish.
set -g OMF_PATH $HOME/.local/share/omf

# Path to your oh-my-fish configuration.
set -g OMF_CONFIG $HOME/.config/omf

### Configuration required to load oh-my-fish ###
# Note: Only add configurations that are required to be set before oh-my-fish is loaded.
# For common configurations, we advise you to add them to your $OMF_CONFIG/init.fish file or
# to create a custom plugin instead.

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

set -gx CCACHE_SLOPPINESS pch_defines,time_macros
set -gx CC "ccache gcc"
set -gx CXX "ccache g++"
set -gx PATH $HOME/.local/bin $PATH
set -g TERMINAL "urxvt"
set -g VIRTUAL_ENV_DISABLE_PROMPT "yes"
set -g theme_display_hg no
set -g theme_display_ruby no

test -s /home/ranieri/.nvm-fish/nvm.fish; and source /home/ranieri/.nvm-fish/nvm.fish
set -gx PATH (echo $HOME/.gem/ruby/(ruby --version | awk '{ print $2 }' | cut -c -4)0/bin) $PATH
