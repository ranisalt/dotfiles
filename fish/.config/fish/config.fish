set fisher_home ~/.local/share/fisherman
set fisher_config ~/.config/fisherman

set -gx BROWSER "/usr/bin/firefox-developer"
set -gx CCACHE_SLOPPINESS "pch_defines,time_macros"
set -gx CC "ccache gcc"
set -gx CXX "ccache g++"
set -gx EDITOR "nvim"
set -gx PATH $HOME/.local/bin $PATH
set -gx TERMINAL "urxvt"
set -g VIRTUAL_ENV_DISABLE_PROMPT "yes"
set -g theme_date_format "+%R"
set -g theme_display_hg no
set -g theme_display_ruby no
