set -x CCACHE_SLOPPINESS "pch_defines,time_macros"
set -x SUDO_ASKPASS "$HOME/.local/bin/askpass"
set -x SUDO_EDITOR "nvim"
set VIRTUAL_ENV_DISABLE_PROMPT "yes"

set fish_prompt_pwd_dir_length 1
set theme_date_format "+%R"
set theme_project_dir_length $fish_prompt_pwd_dir_length
set theme_show_exit_status "yes"

# start X at login
if status --is-login
    set -x PATH $HOME/.local/bin $HOME/.nodenv/bin $HOME/.pyenv/bin $PATH

    status --is-interactive; and source (nodenv init -|psub)
    status --is-interactive; and source (pyenv init -|psub)

    if test -z "$DISPLAY" -a "$XDG_VTNR" -eq 1
        exec startx -- -keeptty
    end
end
