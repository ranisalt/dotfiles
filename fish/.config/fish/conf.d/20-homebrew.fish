test -x /opt/homebrew/bin/brew
  and eval "$(/opt/homebrew/bin/brew shellenv)"

type -q brew
  and source (brew --prefix asdf)/libexec/asdf.fish
