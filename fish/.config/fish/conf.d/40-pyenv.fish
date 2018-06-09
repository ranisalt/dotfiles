if status --is-login
  set -x PYENV_ROOT "$HOME/.pyenv"
  set -x PATH "$PYENV_ROOT/bin" $PATH
  set -x VIRTUAL_ENV_DISABLE_PROMPT 1
end

