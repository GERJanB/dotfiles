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

# Set Colored Prompt
force_color_prompt=yes
PS1="\[\033[33m\]\u@\h\[\033[94m\] \[\033[95m\]\w\[\033[33m\] \$(parse_git_branch)\[\033[33m\] \n\[\033[1;31m\]$\[\033[00m\] "
unset color_prompt force_color_prompt

source ~/.bashrcFiles/functions.sh
source ~/.bashrcFiles/aliases.sh
source ~/.bashrcFiles/pathExports.sh
source ~/.bashrcFiles/bashCompletion.sh

neofetch

