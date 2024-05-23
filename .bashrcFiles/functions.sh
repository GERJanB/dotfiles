parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}


function githomedir { 
    git rev-parse --show-toplevel
}

function gitrootdir {
    rootdir=$(git rev-parse --show-superproject-working-tree)
    dir=$(githomedir)
    while [ $rootdir ] 
    do
        dir=$rootdir
        rootdir=$(git -C $rootdir rev-parse --show-superproject-working-tree)
    done
    echo $dir
    unset rootdir
    unset dir
}

function fsubs {
    echo $(gitrootdir)/$subs
}

function fsubc {
    echo $(fsubs)/$subc
}

function logbase {
    git log --oneline --graph --first-parent $1 HEAD ^$(git merge-base $1 HEAD)^
}

function gitsubrepohash {
    git ls-tree --full-tree --full-name $1 $2 | grep -o "[0-9a-f]\{40\}"
}

function gitservices {
    gitsubrepohash $1 $(fsubs)
}

function gitcore {
    gitsubrepohash $1 $(fsubc)
}

function gcm {
    git commit -m "$*"
}

function gcmp {
    git commit -m "$*";
    git push
}

function acmp {
    git add .;
    git commit -m "$*";
    git push
}

function pbranch {
    branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
    git push -u origin $branch
}

function gfpr {
    git fetch --all --prune;
    git pull --recurse-submodules;
}

function newBranch {
  git checkout -b "$*";
}

function getsize () {
    du -sh "$*"
}


#AUR
function cloneAur () {
    git clone https://aur.archlinux.org/$1.git
}

function openRepo() {
    url=$(cat .SRCINFO | grep "url" | sed -n 's/.*\(https\{0,1\}:\/\/[^ ]*\).*/\1/p')
    librewolf $url
}

function updatePkg() {
    git reset --hard;
    git clean -xffd && git submodule foreach git clean -xffd;
    gfpr;
    makepkg -si;
    git clean -xffd && git submodule foreach git clean -xffd;
}

function setWallpaper() {
	swww img "$*";
	wal -i "$*"
	rm ~/.librewolf/vl1qfjiv.default-default/chrome/img/background.png
	cp "$*" ~/.librewolf/vl1qfjiv.default-default/chrome/img/background.png
}

function setSinkSpeakers() {
	device=$(pactl list sinks short | awk '"hdmi" {print $2}' | grep "hdmi")
	pactl set-default-sink $device
}

function setSinkHeadset() {
	device=$(pactl list sinks short | awk '"Corsair" {print $2}' | grep "Corsair")
	pactl set-default-sink $device
}
