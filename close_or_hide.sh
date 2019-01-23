#!/bin/bash
name=`xdotool getactivewindow getwindowname`
echo $name
if [[ $name == *"Microsoft Teams"* ]]; then
  xdotool windowminimize $(xdotool getactivewindow)
elif [[ $name == *"Thunderbird"* ]]; then
  xdotool windowminimize $(xdotool getactivewindow)
else
  wmctrl -c ":ACTIVE:"
fi
