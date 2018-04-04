set -l YARN_PATH "$HOME/.yarn/bin"

if [ -d "$YARN_PATH" ]
  set -x PATH "$YARN_PATH" $PATH
end
