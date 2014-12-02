\mkdir -p $XDG_CONFIG_HOME/systemd/user

for i in *.{service,timer}
do
  ln -sfTv $PWD/$i $XDG_CONFIG_HOME/systemd/user/$i
done
