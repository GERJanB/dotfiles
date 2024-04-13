function downloadAudio() {
    yt-dlp --extract-audio --audio-format mp3 --add-metadata -o "/home/jbudde/Nextcloud/Music/%(title)s.%(ext)s" $1
}

function findDownloadAudio() {
    url=$(ytfzf -T kitty -L $*)
    echo $url
    yt-dlp --extract-audio --audio-format mp3 --add-metadata -o "./%(title)s.%(ext)s" $url
}
