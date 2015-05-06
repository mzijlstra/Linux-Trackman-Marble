#!/bin/bash

# make button 8 (right hand thumb button) our scroll botton
xinput --set-prop --type=int --format=8 \
			"Logitech USB Trackball" "Evdev Wheel Emulation Button" 8

# enable wheel emulation
xinput --set-prop --type=int --format=8 \
			"Logitech USB Trackball" "Evdev Wheel Emulation" 1

# make it so we can do both horizontal and vertical scrolling
xinput --set-int-prop \
			"Logitech USB Trackball" "Evdev Wheel Emulation Axes" 8 6 7 4 5

# make button 9 our 'middle' (aka 2nd) mouse button for pasting
xmodmap -e "pointer = 1 9 3 4 5 6 7 8 2 10"
