set -x BROWSER "firefox"
set -x CCACHE_SLOPPINESS "pch_defines,time_macros"
set -x SUDO_ASKPASS "$HOME/.local/bin/askpass"
set -x SUDO_EDITOR "nvim"
set -x XDG_CONFIG_HOME "$HOME/.config"
set VIRTUAL_ENV_DISABLE_PROMPT "yes"

set fish_prompt_pwd_dir_length 1
set theme_date_format "+%R"
set theme_project_dir_length $fish_prompt_pwd_dir_length
set theme_show_exit_status "yes"

# keyboard
set -x XKB_DEFAULT_LAYOUT "br"
set -x XKB_DEFAULT_OPTIONS "ctrl:swapcaps"
set -x XKB_DEFAULT_VARIANT "abnt2"

if status --is-login
    set -x PATH $HOME/.local/bin /usr/local/bin $PATH

    # Go
    set -x GOPATH (go env GOPATH)
    set -x PATH "$GOPATH/bin" $PATH

    # Node
    set -x NVM_DIR "$HOME/.nvm"

    # Intel Parallel Studio XE
    set -x PATH "$HOME/intel/bin" $PATH
    set -x PATH "$HOME/intel/vtune_amplifier/bin64" $PATH
    set -x VTUNE_AMPLIFIER_XE_2018_DIR "$HOME/intel/vtune_amplifier"

    systemctl --user import-environment PATH

    if test -z "$DISPLAY" -a "$XDG_VTNR" -eq 1
        exec startx -- -keeptty
    end

    if test -z "$DISPLAY" -a "$XDG_VTNR" -eq 2
        # set -x _JAVA_AWT_WM_NONREPARENTING 1
        # set -x GDK_BACKEND "wayland"
        # set -x QT_DISABLE_WINDOWDECORATION 1
        # set -x QT_QPA_PLATFORM "wayland-egl"
        # set -x SDL_VIDEODRIVER "wayland"
        exec sway
    end
end

