# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
fi

# Markdown viewing
function md(){
	marked --gfm --breaks --tables <$1 | w3m -T text/html
}

# Directory copying
function copyd(){
	pwd | xsel -s
}

function pasted(){
	cd `xsel -o -s`
}

export EDITOR=vim

alias inp='mosh inp.io --ssh "ssh -p 978" --server "LANG=en_US.UTF-8 mosh-server"'

if [ -f ~/.bashrc.local ]; then
	source ~/.bashrc.local
fi

if [ -z "$NOFISH" ]; then
	exec fish
fi
