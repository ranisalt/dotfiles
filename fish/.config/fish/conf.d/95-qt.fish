set -x QT_QPA_PLATFORMTHEME 'gtk2'

if status --is-login
    systemctl --user import-environment QT_QPA_PLATFORMTHEME
end
