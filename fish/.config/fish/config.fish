set -x CCACHE_SLOPPINESS "pch_defines,time_macros"
set -x SUDO_ASKPASS "$HOME/.local/bin/askpass"
set -x SUDO_EDITOR "nvim"
set VIRTUAL_ENV_DISABLE_PROMPT "yes"

set -g theme_color_scheme solarized
set -g theme_date_format "+%R"

# start X at login
if status --is-login
    set -x PATH $HOME/.local/bin $HOME/.nodenv/bin $HOME/.pyenv/bin $PATH

    status --is-interactive; and source (nodenv init -|psub)
    status --is-interactive; and source (pyenv init -|psub)

    if test -z "$DISPLAY" -a "$XDG_VTNR" -eq 1
        exec startx -- -keeptty
    end
end
