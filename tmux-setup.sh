#!/bin/bash
DIRECTORY=$1

cd $DIRECTORY
tmux new-window -n 'utils'
tmux split-window -h
tmux select-pane -t 0
tmux send-keys "laravel_log" C-m
tmux select-pane -t 1
tmux send-keys "php artisan horizon" C-m
tmux split-window -v
tmux send-keys "npm run watch" C-m
tmux select-window -t 1
tmux select-pane -t 0

tmux send-keys "cd $DIRECTORY" C-m
tmux send-keys "vim" C-m
