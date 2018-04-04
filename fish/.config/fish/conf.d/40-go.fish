if status --is-login
  set -x GOPATH (go env GOPATH)
  set -x PATH "$GOPATH/bin" $PATH
end

