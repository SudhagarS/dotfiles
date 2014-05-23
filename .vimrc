set nocompatible              " be iMproved, required

filetype on
filetype indent on
filetype plugin on

set showtabline=2 " show the tab line, 0 to disable
set number
syntax on
colorscheme delek

set ignorecase " for ignoring case in search patterns
set smartcase " for overriding the prev setting when cap is used
set incsearch " show immediately so far searched pattern
set timeoutlen=200 " waiting time to complete a seq of chars
set clipboard=unnamedplus " enable copy/paste from system cb

" Custom mappings
inoremap jj <Esc>

" Motivation to stay out of insert mode
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'

call vundle#end()            " required
filetype plugin indent on    " required
