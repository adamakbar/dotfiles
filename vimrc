set nocompatible
filetype plugin indent on
syntax enable

call plug#begin('~/vimfiles/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'bling/vim-airline'
Plug 'StanAngeloff/php.vim'
call plug#end()

" Visual
set guifont=DejaVu\ Sans\ Mono:h12
set background=dark
let solarized_termcolors=256
let solarized_contrast="high"
colorscheme solarized

" Text formatting
set tabstop=4 " Tab to 4 spaces
set shiftwidth=4 " Number of spaces to use for autoindenting
set expandtab
set autoindent
set nowrap

" TEST
set autoindent

set backspace=indent,eol,start

" Search without enter
set incsearch
set ignorecase
set number
set rnu
set showcmd
set ruler

" International
set encoding=utf-8
set fileformats=unix,dos,mac

set history=10000

" Key helper
let mapleader=" "
imap <A-l> <Esc>
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

autocmd Filetype gitcommit setlocal spell textwidth=72
