# This shell script splits the portrait monitor (usually, right side) into (1) terminal (2) htop and (3) nvitop.
CONDA_ENV="myCondaEnv"

source ~/.bashrc
conda activate $CONDA_ENV
tmux new-session -s gihan-right-monitor -n gihan-tmux -d
tmux split-window -v
tmux split-window -v
tmux send-keys -t 1 "htop" C-m
tmux send-keys -t 2 "nvitop" C-m
tmux select-pane -t 0
tmux attach-session -t gihan-right-monitor
