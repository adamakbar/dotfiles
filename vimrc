set nocompatible
filetype plugin indent on
set backspace=indent,eol,start

call plug#begin('~/vimfiles/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim' " That this one is in the bag
Plug 'StanAngeloff/php.vim'
Plug 'tpope/vim-surround'
call plug#end()

" Interface
set guifont=DejaVu\ Sans\ Mono:h12
set background=dark
set guioptions-=m
set guioptions-=T
let solarized_termcolors=256
let solarized_contrast="high"
colorscheme solarized
syntax on

" Tab and space
set tabstop=4 " Tab to 4 spaces
set autoindent
set copyindent
set shiftwidth=4 " Number of spaces to use for autoindenting
set shiftround " Use multiple shiftwidth when indenting with '<' and '>'

" Search
set incsearch " Show search matches as you type
set ignorecase
set smartcase " Ignore case if search pattern is all lowercase,
              " case-sensitive otherwise

" Code monkey
set number
set relativenumber
set showmatch " Set show matching parenthesis
set history=10000
set undolevels=10000
set visualbell
set noerrorbells " Stop beeping robot!

" We live in one helluva fucked up world
set nobackup
set noswapfile

" International
set encoding=utf-8
set fileformats=unix,dos,mac

" Key helper
let mapleader=" "
nnoremap ; :
imap <A-l> <Esc>
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>
let g:ctrlp_map='<c-p>'
autocmd Filetype gitcommit setlocal spell textwidth=72
