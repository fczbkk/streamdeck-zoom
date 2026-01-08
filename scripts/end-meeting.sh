#!/bin/bash
# End Zoom meeting using Cmd+W

osascript -e 'tell application "System Events"
    tell process "zoom.us"
        keystroke "w" using {command down}
    end tell
end tell'
