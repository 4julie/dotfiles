# Custom Shell Prompt
export PS1="%F{cyan}%n@%m%f:%F{yellow}%~%f$ "

# Everyday Workflow Shortcuts
alias ..="cd .."
alias gst="git status"
alias gaa="git add --all"
alias gcm="git commit -m"

# Secure Local Configuration Escape Hatch
if [ -f "$HOME/.zshrc.local" ]; then
    source "$HOME/.zshrc.local"
fi
