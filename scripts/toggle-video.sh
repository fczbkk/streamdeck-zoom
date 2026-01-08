#!/bin/bash
# Toggle Zoom video on/off using Cmd+Shift+V

osascript -e 'tell application "System Events"
    tell process "zoom.us"
        keystroke "v" using {command down, shift down}
    end tell
end tell'
