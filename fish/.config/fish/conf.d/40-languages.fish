# CCache
set -x CCACHE_SLOPPINESS "pch_defines,time_macros"
set -x CMAKE_CXX_COMPILER_LAUNCHER ccache

# Go
if status --is-login
  set -x GOPATH (go env GOPATH)
  set -x PATH "$GOPATH/bin" $PATH
end

# Java
set -x _JAVA_OPTIONS "
    -Dawt.useSystemAAFontSettings=on
    -Djdk.gtk.version=3
    -Dsun.java2d.opengl=true
    -Dswing.aatext=true
    -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel
"

# Javascript (Node, Yarn)
nvm use default
if status --is-login
    set -x PATH "$HOME/.yarn/bin" $PATH
end

# Rust
if status --is-login
  set -x PATH "$HOME/.cargo/bin" $PATH
end
