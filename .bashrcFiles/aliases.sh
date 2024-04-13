# Git
alias gsuir='git submodule update --init --recursive'
alias gst='git show --shortstat --oneline HEAD;echo -------------------------------------------------------------; git status;'
alias gd='git diff'
alias gdt='git difftool'
alias gl='git log --graph --oneline --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)"'
alias gfa='git fetch --all'
alias gfap='git fetch --all --prune'
alias gdu='git diff $ups'
alias gbranchclear='git branch -d $(git branch --list | grep -v "*")'
alias gbn='git branch --show-current'
alias gpr="git pull --recurse-submodules"
alias gp='git push'
alias cleanRepo='git clean -xffd && git submodule foreach git clean -xffd'

alias cdev='git checkout develop'
alias cmas='git checkout master'
alias cmain='git checkout main'

# dotfiles management
alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'


# Utils
alias lsdir='ls -dla */'
alias lsfile='ls -la | grep -v /'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias br='source ~/.bashrc; echo reloaded .bashrc'
alias bpr='nvim ~/.bashrc'

alias ranger='. ranger'

alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias "sudoedit"='function _sudoedit(){ sudo -e "$1";};_sudoedit'



# Stuff for Games
alias bakkes="WINEFSYNC=1 protontricks -c 'wine ~/.steam/steam/steamapps/compatdata/252950/pfx/drive_c/Program\ Files/BakkesMod/BakkesMod.exe' 252950"
alias fs22="cd /home/jbudde/.steam/steam/steamapps/compatdata/1248130/pfx/drive_c/users/steamuser/Documents"


#enable color support of ls
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


#kitty

alias icat="kitty +kitten icat '$1'"

