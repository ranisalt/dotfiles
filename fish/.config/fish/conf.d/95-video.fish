# DXVK
set -x DXVK_HUD 1

# Firefox
set -x MOZ_USE_XINPUT2 1
set -x MOZ_WEBRENDER 1

# Qt
set -x QT_QPA_PLATFORMTHEME 'gtk2'
systemctl --user import-environment QT_QPA_PLATFORMTHEME

# VA-API/VDPAU
set -x LIBVA_DRIVER_NAME 'i965'
set -x VDPAU_DRIVER 'va_gl'
