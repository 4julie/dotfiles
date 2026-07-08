# Load system defaults if they exist
[ -f /etc/bash.bashrc ] && . /etc/bash.bashrc

# Share your core aliases
alias ..="cd .."
alias gst="git status"

echo "Minimal fallback Bash environment loaded!"
