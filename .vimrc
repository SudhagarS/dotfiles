set nocompatible              " be iMproved, required

filetype on
filetype indent on
filetype plugin on

set showtabline=2 " show the tab line, 0 to disable
set number
" To enable color scheme
syntax on
set t_Co=256
colorscheme wombat256mod

set ignorecase " for ignoring case in search patterns
set smartcase " for overriding the prev setting when cap is used
set incsearch " show immediately so far searched pattern
set timeoutlen=200 " waiting time to complete a seq of chars
set clipboard=unnamedplus " enable copy/paste from system cb

" to keep all the temporary and backup files in one placeet backup
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

set history=1000 "default is 20
set showmode " display current mode
set backspace=indent,eol,start  " backspace for dummys
set showmatch  " show matching paren/brackets

set cursorline

set laststatus=2 " enable status bar
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset
 
" Custom mappings
inoremap jj <Esc>

" Motivation to stay out of insert mode
inoremap <Left>  <NOP>
inoremap <Right> <NOP>
inoremap <Up>    <NOP>
inoremap <Down>  <NOP>

nmap <CR><CR> o<ESC> " insert new line on two enter

" Ctrl s to save
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" Movements between windows
map <c-j> <c-w>j
map <c-h> <c-w>h
map <c-k> <c-w>k
map <c-l> <c-w>l

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" CtrlP Settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'

call vundle#end()            " required

filetype plugin indent on    " required
