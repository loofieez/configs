#!/usr/bin/env osascript

# required parameters:
# @raycast.schemaVersion 1
# @raycast.mode silent
# @raycast.title play vibing

# optional parameters:
# @raycast.packageName imusic
# @raycast.icon images/imusic.png

# documentation:
# @raycast.author loofieez
# @raycast.authorURL https://github.com/loofieez
# @raycast.description play vibing playlist on imusic

on run
    tell application "Music"
        activate
        play user playlist "vibing"
    end tell
end run
