#!/bin/bash
# Toggle Zoom mute/unmute using Cmd+Shift+A

osascript -e 'tell application "System Events"
    tell process "zoom.us"
        keystroke "a" using {command down, shift down}
    end tell
end tell'
