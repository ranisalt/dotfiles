set -x BROWSER "firefox"
set -x SUDO_ASKPASS "$HOME/.local/bin/askpass"
set -x SUDO_EDITOR "nvim"
set -x XDG_CONFIG_HOME "$HOME/.config"

# keyboard
# set -x XKB_DEFAULT_LAYOUT "br"
# set -x XKB_DEFAULT_OPTIONS "ctrl:swapcaps"
# set -x XKB_DEFAULT_VARIANT "abnt2"

if status --is-login
    set -x PATH $HOME/.local/bin /usr/local/bin $PATH

    systemctl --user import-environment PATH

    if test -z "$DISPLAY" -a "$XDG_VTNR" -eq 2
        # set -x _JAVA_AWT_WM_NONREPARENTING 1
        # set -x GDK_BACKEND "wayland"
        # set -x QT_DISABLE_WINDOWDECORATION 1
        # set -x QT_QPA_PLATFORM "wayland-egl"
        # set -x SDL_VIDEODRIVER "wayland"
        exec sway
    end
end

