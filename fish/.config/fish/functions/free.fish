# Defined in /tmp/fish.3eITJu/free.fish @ line 2
function free
	test "$COLUMNS" -gt 90
      and set -l WIDE '-w'
	command free -ht "$WIDE" $argv;
end
