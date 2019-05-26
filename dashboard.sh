#!/bin/bash
tmux new -s station -d
tmux select-window -t station:0
tmux split-window -h
tmux send-keys 'watch -n 1 netstat -untap' 'C-m'
tmux split-window -v -t 0 
tmux send-keys 'iftop -n' 'C-m'
tmux split-window -v -t 2
tmux send-keys 'htop' 'C-m'
tmux attach -t station
