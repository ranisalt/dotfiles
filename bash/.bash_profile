#!/usr/bin/env bash
# Source global definitions
[ -f /etc/bash_profile ] && . /etc/bash_profile
[ -f /etc/profile ] && . /etc/profile

# Source local definitions
[ -f ~/.profile ] && . ~/.profile

# Get the aliases and functions
[ -f ~/.bashrc ] && . ~/.bashrc

# User specific environment and startup programs
export PATH="$PATH:$HOME/.local/bin"
