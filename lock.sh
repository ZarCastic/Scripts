#!/usr/bin/env bash
#ripped and adapted from https://www.reddit.com/r/unixporn/comments/7df2wz/i3lock_minimal_lockscreen_pretty_indicator/ :)

# Suspend dunst and lock, then resume dunst when unlocked.
pkill -u $USER -USR1 dunst

i3lock -n --blur=2 \
    --insidecolor=373445ff --ringcolor=ffffffff --line-uses-inside \
    --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
    --insidevercolor=fecf4dff --insidewrongcolor=d23c3dff \
    --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+86:y+1350" \
    --radius=30 --veriftext="" --wrongtext=""

pkill -u $USER -USR2 dunst

