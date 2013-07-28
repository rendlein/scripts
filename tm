#!/usr/local/bin/bash

RUNNING_P=`ps ux | grep "[t]mux"`

if [ $? -eq 1 ] ; then
    tmux new-session -d -s main

    tmux new-window -t main:1 
    tmux new-window -t main:2 -n 'Misc'
    tmux new-window -t main:3 -n 'Root'
    tmux new-window -t main:4 -n 'Music'

    tmux rename-widoe -t main:1 'Dev'
    tmux select-window -t main:1
    tmux -2 attach-session -t main
else
    tmux -2 attach-session -t main
fi
