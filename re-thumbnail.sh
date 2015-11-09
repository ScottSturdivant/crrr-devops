#!/bin/bash
IMGS=/home/crrr/dev.crrr.org/src/crrr/static/images
# Remove existing
/usr/bin/find $IMGS -type f -name 'tb_*.jpg' -delete
# Create new ones
/usr/bin/find $IMGS -type f -name '*.jpg' | while read JPG; do DIR=$(/usr/bin/dirname "$JPG"); THUMB=tb_$(/usr/bin/basename "$JPG"); /usr/bin/convert "$JPG" -thumbnail x350 "$DIR/$THUMB"; done
