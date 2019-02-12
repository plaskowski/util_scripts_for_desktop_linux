#!/bin/bash
DIR=/home/piolas/screen_recording/
DATE_DIR=$DIR/`date --iso-8601`
mkdir -p $DATE_DIR
env DISPLAY=:0 scrot $DATE_DIR/`date -Iseconds`.jpg -q 30 -z >> $DIR/scrot.log 2>&1
