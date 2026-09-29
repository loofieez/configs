#!/usr/bin/env osascript

# raycast script command for spotify
# get the currently playing track

# required parameters:
# @raycast.schemaVersion 1
# @raycast.mode "silent"
# @raycast.title "now playing"

# optional parameters:
# @raycast.packageName "spotify"
# @raycast.icon "images/spotify.png"

# documentation:
# @raycast.author "loofieez"
# @raycast.authorURL "https://github.com/loofieez"
# @raycast.description "get the currently playing track on spotify"

on run
	tell application "System Events"
		# check if spotify is running
		set isSpotifyRunning to (exists process "Spotify")
		# if not, return an error message
		if not isSpotifyRunning then
			return "Spotify is Not Open"
		end if
	end tell

	tell application "Spotify"
		# get the player state
		set playerState to player state
		# get the current track
		set currentTrack to current track
		# get the current artist
		set currentArtist to artist of currentTrack
		# get the track name
		set trackName to name of currentTrack

		# get the status text
		if playerState is "playing" then
			set statusText to "playing"
		else if playerState is "paused" then
			set statusText to "paused"
		else if playerState is "stopped" then
			set statusText to "stopped"
		else
			set statusText to "unknown"
		end if
	end tell

	delay 2.5
	# return the now playing status
	return statusText & " - " & trackName & " by " & currentArtist
end run
