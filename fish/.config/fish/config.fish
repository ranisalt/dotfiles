set -gx CCACHE_SLOPPINESS "pch_defines,time_macros"
set -g VIRTUAL_ENV_DISABLE_PROMPT "yes"

set -g theme_color_scheme solarized
set -g theme_date_format "+%R"

set -gx PATH $HOME/.config/composer/vendor/bin $HOME/.nodenv/bin $HOME/.local/bin $PATH
status --is-interactive; and . (nodenv init -|psub)

# start X at login
if status --is-login; and test -z "$DISPLAY" -a "$XDG_VTNR" -eq "1"
    exec startx -- -keeptty
end
