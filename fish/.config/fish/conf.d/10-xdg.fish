if [ -n "$FLATPAK_ID" ]
  contains "$PATH" "$HOME/.var/app/$FLATPAK_ID/bin"
    or set -px PATH "$HOME/.var/app/$FLATPAK_ID/bin"
end
