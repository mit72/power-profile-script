#!/bin/bash

#Get the id from kscreem-doctor *(for KDE) and you can add and change profiles
OUTPUT="eDP-1"
MODE_60="2"   
MODE_120="1"  

PROFILE=$(powerprofilesctl get)

if [ "$PROFILE" = "power-saver" ]; then
    kscreen-doctor output.$OUTPUT.mode.$MODE_60
else
    kscreen-doctor output.$OUTPUT.mode.$MODE_120
fi
