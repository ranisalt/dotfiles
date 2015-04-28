function ncmpcpp
	if [ ! -e /tmp/mpd.fifo ]
		mkfifo /tmp/mpd.fifo
	end

	nc -u -l -k 127.0.0.1 5555 > /tmp/mpd.fifo &
	command ncmpcpp
	kill -9 %nc
	return 0
end
