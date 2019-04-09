if [ -z "$WAYLAND_DISPLAY" ]
    exit
end
# set -x XKB_DEFAULT_LAYOUT 'br'
# set -x XKB_DEFAULT_MODEL 'abnt2'
# set -x XKB_DEFAULT_OPTIONS 'ctrl:swapcaps'
set -x CLUTTER_BACKEND wayland
set -x QT_QPA_PLATFORM wayland-egl
set -x SDL_VIDEODRIVER wayland
