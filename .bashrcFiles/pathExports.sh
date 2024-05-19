export PATH="$HOME/.local/bin:$PATH"
export PATH=$PATH:/home/jan/.spicetify
export PATH=$PATH:/opt/gradle/gradle-8.3/bin
export PATH=$PATH:/usr/local/texlive/2023/bin/x86_64-linux

export MANPATH=$MANPATH:/usr/local/texlive/2023/texmf-dist/doc/man
export INFOPATH=$INFOPATH:/usr/local/texlive/2023/texmf-dist/doc/info

export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/jbudde/.local/share/flatpak/exports/share:${XDG_DATA_DIRS}"
export XDG_CONFIG_HOME="/home/jbudde/.config/"


export SUDO_EDITOR="nvim"

. "$HOME/.cargo/env"

eval "$(zoxide init bash)"

shopt -s autocd

