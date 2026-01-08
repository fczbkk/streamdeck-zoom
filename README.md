# Stream Deck Zoom Controls

Control Zoom meetings from your Elgato Stream Deck using shell scripts.

## Features

- **Toggle Mute/Unmute** - Cmd+Shift+A
- **Toggle Video On/Off** - Cmd+Shift+V
- **End Meeting** - Cmd+W

## Requirements

- macOS
- Zoom desktop application
- Elgato Stream Deck
- Accessibility permissions for Terminal (or your Stream Deck software)

## Setup

### 1. Grant Accessibility Permissions

macOS requires accessibility permissions to control other applications:

1. Open **System Settings** → **Privacy & Security** → **Accessibility**
2. Add and enable your Stream Deck software (e.g., "Stream Deck")
3. If testing from Terminal, also add "Terminal" or your terminal app

### 2. Test the Scripts

From the command line, test each script:

```bash
./scripts/toggle-mute.sh
./scripts/toggle-video.sh
./scripts/end-meeting.sh
```

Make sure you're in a Zoom meeting when testing.

### 3. Configure Stream Deck

For each button you want to configure:

1. In Stream Deck software, drag the **System → Open** action to a button
2. Set the path to the script, for example:
   - `/Users/fczbkk/projects/automation/streamdeck-zoom/scripts/toggle-mute.sh`
3. Repeat for other controls

## Scripts

| Script | Function | Zoom Shortcut |
|--------|----------|---------------|
| `toggle-mute.sh` | Mute/Unmute | Cmd+Shift+A |
| `toggle-video.sh` | Video On/Off | Cmd+Shift+V |
| `end-meeting.sh` | End Meeting | Cmd+W |

## Troubleshooting

### Scripts don't work

1. **Check permissions**: Ensure Stream Deck (or Terminal for testing) has Accessibility access in System Settings → Privacy & Security → Accessibility
2. **Verify Zoom is running**: The scripts will show a notification if Zoom isn't running
3. **Test shortcuts manually**: Press Cmd+Shift+A in Zoom to verify the shortcut works
4. **Check script paths**: Make sure the full absolute path is used in Stream Deck (e.g., `/Users/fczbkk/projects/automation/streamdeck-zoom/scripts/toggle-mute.sh`)
5. **Zoom must be in a meeting**: Some shortcuts only work when you're in an active meeting

### Zoom shortcuts changed

If Zoom updates keyboard shortcuts, edit the scripts and change the keystroke commands.

## Customization

To add more Zoom controls, create new scripts following the same pattern. Find Zoom keyboard shortcuts in **Zoom → Settings → Keyboard Shortcuts**.
