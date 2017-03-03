#!/bin/bash

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
PATH="/usr/local/smlnj/bin:${PATH}"
export PATH
set -o vi

export PS1="\[\033[m\]\@ \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -Gh'
alias smlnj='rlwrap sml'

source .bashrc

echo "Hello Mel!"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/melody/.gvm/bin/gvm-init.sh" ]] && source "/Users/melody/.gvm/bin/gvm-init.sh"



##
# Your previous /Users/melody/.bash_profile file was backed up as /Users/melody/.bash_profile.macports-saved_2016-12-21_at_19:47:47
##

# MacPorts Installer addition on 2016-12-21_at_19:47:47: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

