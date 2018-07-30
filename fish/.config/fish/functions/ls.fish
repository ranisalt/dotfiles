# Defined in /tmp/fish.HHueHK/ls.fish @ line 2
function ls
	command ls --classify --color=auto --group-directories-first --time-style=+"%d.%m.%Y %H:%M" $argv;
end
