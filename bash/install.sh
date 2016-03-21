#!/usr/bin/env sh
${RSYNC} "$PWD/bash_profile" "$HOME/.bash_profile"
${RSYNC} "$PWD/bashrc" "$HOME/.bashrc"
