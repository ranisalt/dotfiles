if status --is-login
  and test -z "$DISPLAY" -a "$XDG_VTNR" -eq 1
    exec startx -- -keeptty
end
