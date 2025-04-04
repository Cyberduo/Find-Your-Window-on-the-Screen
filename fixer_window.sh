#!/bin/bash

# -----------------------------------------------------------
# Universal Window Fixer - "It's There, But You Can't See It"
# Author: Lukasz Szymulanski
# Version: 1.2 - April Fools Edition - but it's work
# ------------------------------------------------------------

echo -e "\n📋 List of all visible and not windows :\n"

# Get and display numbered list of open windows
wmctrl -l | nl -w2 -s'. '

echo -ne "\n🔢 Enter the number of window you want to fix: "
read CHOICE

# Get the title od the selected window
WIN_NAME=$(wmctrl -l | sed -n "${CHOICE}p" | awk '{$1=$2=$3=""; print substr($0,5)}' | xargs)

# Validate input
if [ -z "$WIN_NAME" ]; then
    echo "❌ Wrong choice of window number."
    exit 1
fi

echo -e "\n🎯 Selected window: \"$WIN_NAME\""

# Find the window ID
WIN_ID=$(xdotool search --name "$WIN_NAME" | tail -1)

if [ -z "$WIN_ID" ]; then
    echo "❌ Could not find the window IP."
    exit 1
fi

# Fixing window
echo "🔧 Fixing problem..."

# Force the window to be visible and move it to the main workspace
xdotool windowmap "$WIN_ID"
xdotool set_desktop_for_window "$WIN_ID" 0
xdotool windowactivate "$WIN_ID"
xdotool windowraise "$WIN_ID"
wmctrl -ir "$WIN_ID" -b remove,maximized_vert,maximized_horz
sleep 0.3
wmctrl -ir "$WIN_ID" -b add,maximized_vert,maximized_horz

echo -e "\n✅ The window has been brought to focus and moved to the main screen.\n"

# Ask user whether to close the terminal
read -p "❓ Do you want to close this terminal window? [y/N] " CLOSE_TERM
if [[ "$CLOSE_TERM" =~ ^[Yy]$ ]]; then
    exit
fi
