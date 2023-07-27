function flatpak-external-data-checker --wraps='flatpak run --filesystem=$PWD org.flathub.flatpak-external-data-checker' --description 'alias flatpak-external-data-checker=flatpak run --filesystem=$PWD org.flathub.flatpak-external-data-checker'
  flatpak run --filesystem=$PWD org.flathub.flatpak-external-data-checker $argv
        
end
