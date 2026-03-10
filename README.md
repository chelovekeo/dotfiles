# dotfiles

Universal dotfiles for a comfortable terminal workflow and quick environment setup on macOS.

## Structure

```text
dotfiles/
├── zsh/
│   ├── .zshrc
│   ├── aliases.zsh
│   ├── exports.zsh
│   └── functions.zsh
├── git/
│   ├── .gitconfig
│   └── .gitignore
├── config/
│   └── config.toml
├── apps/
│   ├── hammerspoon/
│   │   └── init.lua
│   └── neovim/
│       └── init.vim
├── setup.sh
└── README.md
```

## Customization

Add or modify files in the corresponding directories:

| Folder | Purpose |
| --- | --- |
| `zsh/` | Shell setup, aliases, and functions |
| `git/` | Global Git configuration |
| `config/` | Shared configuration files (for example `config.toml`) |
| `apps/` | Application settings (Neovim, Hammerspoon, etc.) |
| `games/` | Game-specific configs (CS2 and others) |

New configs can be linked automatically via `setup.sh`.

## Compatibility

| OS | Support |
| --- | --- |
| macOS | Full |
| Linux | Partial |
