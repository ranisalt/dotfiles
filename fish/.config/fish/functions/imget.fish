# Defined in /tmp/fish.kki9jS/imget.fish @ line 1
function imget
	curl -sL -H 'authorization: client-id cc752a847ab1a97' "https://api.imgur.com/3/album/$argv[1]/images" | jq -r '.data[].link' | aria2c --conf-path ~/.config/pacman/aria2.conf -i -;
end
