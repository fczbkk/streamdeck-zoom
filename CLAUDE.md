# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Shell scripts for controlling Zoom meetings via Elgato Stream Deck on macOS. Scripts use osascript to send keyboard shortcuts to the Zoom application.

## Architecture

Simple automation using AppleScript via osascript:
- Each script checks if Zoom ("zoom.us" process) is running
- Brings Zoom to foreground with `set frontmost to true`
- Adds 0.2s delay to ensure window activation
- Sends keyboard shortcuts via `System Events` (e.g., Cmd+Shift+A for mute)
- Shows macOS notification if Zoom isn't running
- Stream Deck's "System → Open" action executes these scripts

## Testing Scripts

Test scripts while in an active Zoom meeting:

```bash
./scripts/toggle-mute.sh      # Should mute/unmute
./scripts/toggle-video.sh     # Should toggle video
./scripts/end-meeting.sh      # Should prompt to end meeting
```

**Note**: macOS requires Accessibility permissions for the executing application (Terminal or Stream Deck).

## Adding New Controls

1. Find the Zoom keyboard shortcut (Zoom → Settings → Keyboard Shortcuts)
2. Create a new script in `scripts/` following existing pattern
3. Use `keystroke "key" using {modifier down, ...}` syntax
4. Make executable with `chmod +x`
5. Update README.md with the new control

## Common Zoom Shortcuts

- Mute/Unmute: Cmd+Shift+A
- Video: Cmd+Shift+V
- Share Screen: Cmd+Shift+S
- End Meeting: Cmd+W
- Raise/Lower Hand: Option+Y
- Applause Reaction: Option+Cmd+4
- Thumbs Up Reaction: Option+Cmd+5
- Celebrate Reaction: Option+Cmd+9
- Recording: Cmd+Shift+R
- Chat: Cmd+Shift+H
- Participants: Cmd+U
