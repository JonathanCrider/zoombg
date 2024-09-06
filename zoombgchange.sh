#!/bin/bash

# Modified from Saransh's tutorial: https://www.freecodecamp.org/news/how-to-write-a-script-to-change-zoom-background/

# Zoom file that we'll replace
OG_BG="BE0BE080-7267-4220-94A5-445AF40B91CC";

# Directory where Zoom keeps background files
ZOOM_DIR="/Users/$USER/Library/Application Support/zoom.us/data/VirtualBkgnd_Custom/";

# Directory of bakcgrounds to use
BGPATH="/Users/$USER/Pictures/zoombg";

# Randomize file from background directory
NEW_BG=$(find "$BGPATH" -type f | sort -R | head -1);

if [[ "$NEW_BG" == *".DS_Store"* ]]; then
  echo "filename .DS_Store, re-randominzing"
  NEW_BG=$(find "$BGPATH" -type f | sort -R | head -1);
fi

# Get image name from path string
IMG_NAME=$(basename ${NEW_BG})

# Replace zoom file with new random image
cp -R "$NEW_BG" "$ZOOM_DIR/$OG_BG";

# Random quotes to display when using CLI to update
QUOTES=('I have a bad feeling about this.' 'Laugh it up, fuzzball.' 'Use the Force, Luke.' 'If you only knew the power of the dark side.' 'You have failed me for the last time.' 'Now, release your anger.' 'I never ask that question until after I'\''ve done it!' 'Have you tried turning it of and then on again?' 'Hello IT');
LENGTH=${#QUOTES[@]};
IDX=$[ $RANDOM % $LENGTH ];

# Requires lsix to display image thumb: https://github.com/hackerb9/lsix (macos cli: brew install lsix)
# - does not work in terminal
echo -e ${QUOTES[$IDX]} "\n(zoom bg updated to: "$IMG_NAME")";
