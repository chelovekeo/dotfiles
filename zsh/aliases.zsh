# General
alias ll='ls -la'
alias la='ls -A'
alias l='ls -CF'
alias c='clear'

# Git
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'

# System
alias reload='source ~/.zshrc'
alias editrc='nvim ~/.zshrc'
alias update='brew update && brew upgrade && brew cleanup'

# Dev / Docker / SSH
alias d='docker'
alias dc='docker compose'
alias sshc='ssh -o StrictHostKeyChecking=no'

# Task automation
alias mkcd='mkdir -p "$1" && cd "$1"'
