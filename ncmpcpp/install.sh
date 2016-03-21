#!/usr/bin/env sh
[ ! -d "$HOME/.ncmpcpp" ] && mkdir -pv "$HOME/.ncmpcpp"
${RSYNC} "$PWD/" "$HOME/.ncmpcpp"
