set nocompatible
filetype plugin indent on
set backspace=indent,eol,start

call plug#begin('~/vimfiles/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'matchit.zip'
call plug#end()

" Interface
set guifont=Hack
set background=dark
set guioptions-=m
set guioptions-=T
set guioptions-=r
hi Normal guifg=grey guibg=black
syntax off

" Tab and space
set tabstop=4 " Tab to 4 spaces
set softtabstop=4 " When hitting <BS>, remove like tab even is spaces
set autoindent
set copyindent
set shiftwidth=4 " Number of spaces to use for autoindenting
set shiftround " Use multiple shiftwidth when indenting with '<' and '>'
set expandtab " This, ladies and gentlemen, the game changer

autocmd BufRead,BufNewFile *.blade.* setlocal ts=2 sts=2 sw=2
autocmd FileType css,html,js setlocal ts=2 sts=2 sw=2

" Search
set incsearch " Show search matches as you type
set ignorecase
set smartcase " Ignore case if search pattern is all lowercase,
              " case-sensitive otherwise

" Code monkey
set ruler
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
noremap <leader>y "+y
noremap <leader>p "+p

" ctrlP
let g:ctrlp_map='<c-t>'
set wildignore+=*\\vendor\\*,*.swp,*.zip,*.exe
let g:ctrlp_custom_ignore = {
	\ 'dir': '\v[\/]\.(git|hg|svn)$',
	\ 'file': '\v\.(exe|so|dll)$',
	\ }
let g:ctrlp_working_path_mode = 'ra'

" Key split and move like a boss
nmap vs :vsplit<CR>
nmap sp :split<CR>
nmap <leader>h <C-w>h
nmap <leader>j <C-w>j
nmap <leader>k <C-w>k
nmap <leader>l <C-w>l
nmap <leader>b :CtrlPBookmarkDir<CR>

autocmd Filetype gitcommit setlocal spell textwidth=72
