#!/usr/local/bin/bash

RUNNING_P=`ps ux | grep "[t]mux" | echo $?`

if [ "$RUNNING_P" -eq 0 ] ; then
    tmux new-session -d -s main

    tmux new-window -t main:1 -n 'Dev '
    tmux new-window -t main:2 -n 'Misc'
    tmux new-window -t main:3 -n 'Root'

    tmux select-window -t main:1
    tmux -2 attach-session -t main
else
    tmux -2 attach-session -t main
fi
