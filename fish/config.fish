# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme bobthefish

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

set -gx CCACHE_SLOPPINESS pch_defines,time_macros
set -gx CC "ccache gcc"
set -gx CXX "ccache g++"
set -gx PATH $HOME/.local/bin $PATH
set -g TERMINAL "urxvt"
set -g VIRTUAL_ENV_DISABLE_PROMPT "yes"
set -g theme_display_hg no
set -g theme_display_ruby no

test -s /home/ranieri/.nvm-fish/nvm.fish; and source /home/ranieri/.nvm-fish/nvm.fish
