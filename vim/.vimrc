set shell=/bin/sh
set number relativenumber

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'
Plug 'rust-lang/rust.vim'

Plug 'ayu-theme/ayu-vim'

call plug#end()


set laststatus=2  " enable lightline
set noshowmode    " hide default mode status

" set termguicolors     " enable true colors support
" let ayucolor="dark"   " for dark version of theme
" colorscheme ayu

