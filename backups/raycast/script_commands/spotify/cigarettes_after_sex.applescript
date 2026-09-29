#!/usr/bin/env osascript

# raycast script command for spotify
# play `This is Cigarettes After Sex` playlist

# required parameters:
# @raycast.schemaVersion 1
# @raycast.mode "silent"
# @raycast.title "play cas"

# optional parameters:
# @raycast.packageName "spotify"
# @raycast.icon "images/spotify.png"

# documentation:
# @raycast.author "loofieez"
# @raycast.authorURL "https://github.com/loofieez"
# @raycast.description "play this is cigarettes after sex on spotify"

on run
	# set system volume to 75
    set volume output volume 75

    # main event block
    tell application "Spotify"
        # set spotify volume to 100
        set sound volume to 100
        # shuffling off
        set shuffling to false
        # play `the blaze` playlist
        play track "spotify:playlist:37i9dQZF1DZ06evO12tsHe"
    end tell

    # hack: hide spotify window
    # after the playlist is played
    tell application "System Events"
        set visible of process "Spotify" to false
    end tell

    delay 2.5
    # return a success message
    return "Playing, This is Cigarettes After Sex Playlist!"
end run
