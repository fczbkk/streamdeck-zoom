#!/bin/bash
# Raise/lower hand using Option+Y

osascript <<EOF
tell application "System Events"
    set zoomRunning to (name of processes) contains "zoom.us"
    if zoomRunning then
        tell process "zoom.us"
            set frontmost to true
            delay 0.2
            keystroke "y" using {option down}
        end tell
    else
        display notification "Zoom is not running" with title "Zoom Control"
    end if
end tell
EOF
