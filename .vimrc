set nocompatible expandtab shiftwidth=4 softtabstop=4 tabstop=4 backspace=2 hlsearch incsearch number ruler cursorline mouse=a
filetype on
syntax enable
nmap <C-S> :w!<CR>
nmap <C-Q> :q<CR>
vmap <C-S> <C-C>:w!<CR>v
imap <C-S> <Esc>:w!<CR>i
if has("termguicolors")
  let &t_8f="\033[38;2;%lu;%lu;%lum"
  let &t_8b="\033[48;2;%lu;%lu;%lum"
  set termguicolors
endif
colorscheme molokai

