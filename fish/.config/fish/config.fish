set -gx BROWSER "/usr/bin/firefox-developer"
set -gx CCACHE_SLOPPINESS "pch_defines,time_macros"
set -gx EDITOR "nvim"
set -gx PATH $HOME/.nodenv/bin $HOME/.local/bin $PATH
set -gx TERMINAL "urxvt"
set -g VIRTUAL_ENV_DISABLE_PROMPT "yes"
set -g theme_date_format "+%R"
set -g theme_display_hg no
set -g theme_display_ruby no

status --is-interactive; and . (nodenv init -|psub)
