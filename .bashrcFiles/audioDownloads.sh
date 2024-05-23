function downloadAudio() {
    yt-dlp --extract-audio --audio-format mp3 --add-metadata -o "/home/jbudde/Nextcloud/Music/%(title)s.%(ext)s" $1
}

function findDownloadAudio() {
    url=$(ytfzf -T kitty -L $*)
    echo $url
    yt-dlp --extract-audio --audio-format mp3 --add-metadata -o "./%(title)s.%(ext)s" $url
}

function removeSpaces() {
    local input="$1"
    local escaped="${input// /\\ }"
    echo "$escaped"
}

function play() {
find ~/ -type d -name '.*' -prune -o -type f \( -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.mov" -o -name "*.mp3" -o -name "*.flac" -o -name "*.wav" \) -print | fzf -q "$*" --preview 'mpv --ao=null --vo=null --quiet {}' --bind 'enter:execute(mpv {})'
}


function testPlay() {
find ~/ -type d -name '.*' -prune -o -type f \( -name "*.mp4" -o -name "*.mkv" -o -name "*.avi" -o -name "*.mov" -o -name "*.mp3" -o -name "*.flac" -o -name "*.wav" \) -print0 |
awk -v RS='\0' '{n=split($0, a, "/"); print $0 "\0" a[n]}' | 
fzf -q "$*" --preview 'mpv --ao=null --vo=null --quiet {1}' --bind 'enter:execute(mpv {1})' --with-nth=2 --delimiter="\0"

}
