#!/usr/bin/env osascript

# raycast script command for spotify
# play `My Liked Songs` playlist

# required parameters:
# @raycast.schemaVersion 1
# @raycast.mode "silent"
# @raycast.title "liked songs"

# optional parameters:
# @raycast.packageName "spotify"
# @raycast.icon "images/spotify.png"

# documentation:
# @raycast.author "loofieez"
# @raycast.authorURL "https://github.com/loofieez"
# @raycast.description "play liked songs on spotify"

on run
	# set system volume to 75
    set volume output volume 75

    # main event block
    tell application "Spotify"
        # set spotify volume to 75
        set sound volume to 75
        # shuffling off
        set shuffling to false
        # play `liked songs` playlist
        play track "spotify:user:31kymx7zaanvvsbik7aecl53vgom:collection"
    end tell

    # hack: hide spotify window
    # after the playlist is played
    tell application "System Events"
        set visible of process "Spotify" to false
    end tell

    delay 2.5
    # return a success message
    return "Playing, Liked Songs!"
end run
