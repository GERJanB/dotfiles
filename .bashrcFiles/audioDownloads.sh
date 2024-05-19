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

