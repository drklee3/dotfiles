set nocompatible
set number

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

set confirm
set visualbell

set mouse=a
set shiftwidth=2
set shiftwidth=2
set expandtab

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'wakatime/vim-wakatime'


call vundle#end()
filetype plugin indent on
