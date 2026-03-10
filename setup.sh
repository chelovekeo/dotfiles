#!/usr/bin/env bash
set -e

BLUE='\033[0;34m'
GREEN='\033[0;32m'
RESET='\033[0m'

echo -e "${BLUE} Setting up environment...${RESET}"

export DOTFILES="$HOME/dotfiles"

# Link helper
link() {
  local src=$1 dst=$2
  if [ -e "$dst" ]; then rm -rf "$dst"; fi
  ln -s "$src" "$dst"
}

# ZSH
echo -e "${BLUE} Linking ZSH files...${RESET}"
link "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"

# Git
echo -e "${BLUE} Linking Git configs...${RESET}"
link "$DOTFILES/git/.gitconfig" "$HOME/.gitconfig"
link "$DOTFILES/git/.gitignore" "$HOME/.gitignore_global"

# Config
echo -e "${BLUE} Linking global config...${RESET}"
link "$DOTFILES/config/config.toml" "$HOME/.config.toml"

# Apps
echo -e "${BLUE} Linking apps configs...${RESET}"
mkdir -p "$HOME/.hammerspoon"
link "$DOTFILES/apps/hammerspoon/init.lua" "$HOME/.hammerspoon/init.lua"

mkdir -p "$HOME/.config/nvim"
link "$DOTFILES/apps/neovim/init.vim" "$HOME/.config/nvim/init.vim"

echo -e "${GREEN} Done! Restart your terminal.${RESET}"
