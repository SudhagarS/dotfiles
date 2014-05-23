set nocompatible              " be iMproved, required

filetype on
filetype indent on
filetype plugin on

set showtabline=2 " show the tab line, 0 to disable
set number
syntax on
colorscheme delek

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

call vundle#end()            " required
filetype plugin indent on    " required
