#!/usr/bin/env bash
#This guarantees to load all settings
if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
#So /etc/profile.d is linked from non
#interactive bash -c
#export BASH_ENV='~/.bash_profile' 
#That doesn't work with rvm (:
[[ $- == *i* ]] || return

#fix locale
export LANG="en_US.utf8"
export LANGUAGE="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Path to the bash it configuration
export BASH_IT=$HOME/.bash_it

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='zork'

# Set my editor and git editor
export EDITOR="vim"
export GIT_EDITOR="vim"

# Don't check mail when opening terminal.
unset MAILCHECK

# Load Bash It
source $BASH_IT/bash_it.sh
