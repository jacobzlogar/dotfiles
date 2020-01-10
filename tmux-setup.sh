#!/bin/bash
if [$1 -eq "kill"];then
        tmux kill-window -t 2
        tmux select-window -t 1
else
cd $1
tmux new-window -n 'utils'
tmux split-window -h
tmux select-pane -t 0
tmux send-keys "laravel_log" C-m
tmux select-pane -t 1
tmux send-keys "php artisan horizon" C-m
tmux split-window -v
tmux send-keys "npm run watch" C-m
sleep 1
tmux select-window -t 1
tmux select-pane -t 0

tmux send-keys "cd $1" C-m
tmux send-keys "vim" C-m
tmux send-keys ":terminal" C-m
tmux send-keys ":buffer" C-m
fi
