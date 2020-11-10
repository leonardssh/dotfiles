alias gpu_watch="watch -n -1 nvidia-smi"
alias zsource='source ~/.zshrc'
alias ls='exa --color=always --group-directories-first'
alias covid='curl https://corona-stats.online'
alias p='sudo pacman -S'
alias y='yay -S'
alias fshoot_full='flameshot full -p ~/pics/screenshots'
alias list_systemctl="systemctl list-unit-files --state=enabled"
alias cat="ccat"
alias logout="dm-tool switch-to-greeter"
alias i3-logout="i3-msg exit"
alias monitors="xrandr -q | grep " connected" | cut -d ' ' -f1"
alias tnew="tmux new -s"
alias tattach="tmux attach -t"
alias tkill="tmux kill-session -t"
alias tls="tmux ls"
alias tsource="tmux source-file ~/.tmux.conf"
alias zshconfig="nvim ~/.zshrc"
alias f="ranger"
alias v="nvim ."
alias config='ranger ~/.config'
alias dev='ranger ~/Development'
alias zrc='nvim ~/.zshrc'
alias kill_discord="ps -ef | grep discord-canary | grep -v grep | awk '{print $2}' | xargs -r kill -9"
alias reload_polybar="polybar-msg cmd restart"
