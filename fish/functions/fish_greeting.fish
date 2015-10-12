# grab quotes with:
# curl http://api.icndb.com/jokes/?limitTo=\[nerdy\] | jshon -e value -a -e joke -u | sed 's/$/\n%/g' | head -n -1 > chucknorris
# then move chucknorris to /usr/share/fortune
function fish_greeting
	# fortune chucknorris | cowsay -f dragon
end
