# Minimal Zsh Config

# --- Environment ---
export ZSH="$HOME/.oh-my-zsh"
export DOTFILES="$HOME/dotfiles"
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"

# --- Antidote (Plugin Manager) ---
# Ensure antidote is installed via Homebrew
if [ -d "${HOME}/.antidote" ]; then
  source "${HOME}/.antidote/antidote.zsh"
else
  echo " Installing Antidote..."
  git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.antidote
  source "${HOME}/.antidote/antidote.zsh"
fi

# Load bundles (minimal)
antidote load <<EOBUNDLES
ohmyzsh/ohmyzsh path:lib
EOBUNDLES

# --- Basic Shell Options ---
setopt autocd             # auto change directory
setopt correct            # autocorrect commands
setopt interactivecomments # allow comments in interactive shell
setopt histignorealldups  # remove duplicate history entries
setopt sharehistory       # share history between terminals

# --- Prompt ---
autoload -Uz colors && colors
PROMPT="%F{green}%n%f %F{blue}$%f "

# --- Aliases ---
source "$DOTFILES/zsh/aliases.zsh"

# --- Exports ---
source "$DOTFILES/zsh/exports.zsh"

# --- Functions ---
source "$DOTFILES/zsh/functions.zsh"

# --- Development Tools ---
export EDITOR="nvim"
export VISUAL="nvim"
export LANG="en_US.UTF-8"

# --- Homebrew (if installed) ---
if [ -x "$(command -v brew)" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# --- Git completion (optional) ---
[ -f /usr/share/zsh/site-functions/_git ] && autoload -Uz compinit && compinit

# --- Final message ---
echo " dotfiles loaded for user: $USER"
