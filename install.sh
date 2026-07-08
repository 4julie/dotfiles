#!/bin/bash
echo "========================================="
echo "Executing Dotfile Environment Integration"
echo "========================================="

# Ensure GNU Stow is installed on the host container
if ! command -v stow &> /dev/null; then
    echo "Stow missing. Upgrading system packages..."
    sudo apt-get update && sudo apt-get install -y stow
    sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*
fi

# Switch into the directory where this script lives
cd "$(dirname "$0")"

# Execute GNU Stow links straight to home folder (~)
stow git
stow zsh
stow bash

echo "Dotfiles successfully symlinked via Stow!"
