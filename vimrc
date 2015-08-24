set nocompatible
filetype plugin indent on
set backspace=indent,eol,start

call plug#begin('~/vimfiles/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
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
set softtabstop=4 " When hitting <BS>, remove like tab even is spaces
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
set ruler
set number
set relativenumber
set showmatch " Set show matching parenthesis
set history=10000
set undolevels=10000
set novisualbell
set noerrorbells " Stop beeping robot!
set autowrite " Auto save on buffer switch

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
set mouse=a
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

" Key split and move like a boss
nmap vs :vsplit<CR>
nmap sp :split<CR>
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l

" ctrlP
let g:ctrlp_map='<c-p>'
set wildignore+=*\\vendor\\*,*.swp,*.zip,*.exe
let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ }
let g:ctrlp_working_path_mode = 'r'

autocmd Filetype gitcommit setlocal spell textwidth=72

" Language specific
autocmd FileType css,html setlocal tabstop=2
autocmd FileType css,html setlocal softtabstop=2
autocmd FileType css,html setlocal shiftwidth=2

autocmd BufRead,BufNewFile *.blade.php setlocal tabstop=2
autocmd BufRead,BufNewFile *.blade.php setlocal softtabstop=2
autocmd BufRead,BufNewFile *.blade.php setlocal shiftwidth=2
