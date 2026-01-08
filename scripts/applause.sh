#!/bin/bash
# Send applause reaction using Option+C

osascript <<EOF
tell application "System Events"
    set zoomRunning to (name of processes) contains "zoom.us"
    if zoomRunning then
        tell process "zoom.us"
            set frontmost to true
            delay 0.2
            keystroke "c" using {option down}
        end tell
    else
        display notification "Zoom is not running" with title "Zoom Control"
    end if
end tell
EOF
