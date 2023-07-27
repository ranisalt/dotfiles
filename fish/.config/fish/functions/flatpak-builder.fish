function flatpak-builder --wraps='flatpak run org.flatpak.Builder' --description 'alias flatpak-builder=flatpak run org.flatpak.Builder'
  flatpak run org.flatpak.Builder $argv
end
