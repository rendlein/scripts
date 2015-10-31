#!/bin/sh

if [ `uname` = "FreeBSD" ]; then
    acpiconf -i 0 | grep "Remaining capacity" | awk '{print $3}'
else 
    echo "Figure out linux version"
fi

