#!/bin/bash
# Send thumbs up reaction using Option+Cmd+5

osascript <<EOF
tell application "System Events"
    set zoomRunning to (name of processes) contains "zoom.us"
    if zoomRunning then
        tell process "zoom.us"
            set frontmost to true
            delay 0.5
            key code 23 using {option down, command down}
        end tell
    else
        display notification "Zoom is not running" with title "Zoom Control"
    end if
end tell
EOF
