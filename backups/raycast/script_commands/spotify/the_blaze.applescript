#!/usr/bin/env osascript

# raycast script command for spotify
# play `This is The Blaze` playlist

# required parameters:
# @raycast.schemaVersion 1
# @raycast.mode "silent"
# @raycast.title "play blaze"

# optional parameters:
# @raycast.packageName "spotify"
# @raycast.icon "images/spotify.png"

# documentation:
# @raycast.author "loofieez"
# @raycast.authorURL "https://github.com/loofieez"
# @raycast.description "play this is the blaze on spotify"

on run
	# set system volume to 75
    set volume output volume 75

    # main event block
    tell application "Spotify"
        # set spotify volume to 75
        set sound volume to 75
        # shuffling off
        set shuffling to false
        # play `the blaze` playlist
        play track "spotify:playlist:37i9dQZF1DZ06evO0UzLaq"
    end tell

    # hack: hide spotify window
    # after the playlist is played
    tell application "System Events"
        set visible of process "Spotify" to false
    end tell

    delay 2.5
    # return a success message
    return "Playing, This is The Blaze Playlist!"
end run
