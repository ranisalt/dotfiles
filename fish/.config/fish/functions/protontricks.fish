# Defined in - @ line 1
function protontricks --wraps='flatpak run --command=protontricks com.valvesoftware.Steam' --description 'alias protontricks=flatpak run --command=protontricks com.valvesoftware.Steam'
  flatpak run --command=protontricks com.valvesoftware.Steam $argv;
end
