export PATH="$HOME/.local/bin:$PATH"

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb -load ~/.Xresources &
backl restore &
sh ~/.fehbg &

exec i3
