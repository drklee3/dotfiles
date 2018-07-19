set nocompatible
filetype indent plugin on
syntax on
set hlsearch

set ignorecase
set smartcase
set backspace=indent,eol,start

set autoindent
set nostartofline

set ruler
set laststatus=2

set visualbell

set mouse=a
set shiftwidth=2
set shiftwidth=2
set expandtab

set shell=/bin/sh
set number relativenumber

" PLUGINS
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

