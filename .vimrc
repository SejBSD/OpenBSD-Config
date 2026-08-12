set nocompatible

syntax on
set t_Co=256
set background=dark

set number
set cursorline
set colorcolumn=80
set signcolumn=yes
set laststatus=2
set showmatch

filetype plugin indent on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set autoindent
set smartindent

set hlsearch
set incsearch
set ignorecase
set smartcase

set scrolloff=8
set backspace=indent,eol,start
set wildmenu
set iskeyword+=-
set updatetime=50

set splitbelow
set splitright

let g:netrw_liststyle=3
nnoremap <C-e> :Lexplore<CR>

set path+=**
set path+=/usr/include/**
set path+=/usr/local/include/**