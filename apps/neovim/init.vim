" Minimal Neovim config (LazyVim bootstrap)

set number
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set termguicolors
set background=dark

" LazyVim bootstrap
if empty(glob("~/.local/share/nvim/lazy/lazy.nvim"))
  silent !git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable ~/.local/share/nvim/lazy/lazy.nvim
endif
lua require("lazy").setup({})
