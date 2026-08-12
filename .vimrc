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
nnoremap <C-t> :botright terminal<CR>

set path+=**
set path+=~/**
set path+=/usr/include/**
set path+=/usr/local/include/**

set completeopt=menuone,noinsert,noselect

nnoremap ff :execute 'vimgrep /' . expand('<cword>') . '/j ' . substitute(&path, ',', ' ', 'g')<CR>:copen<CR>
nnoremap ]] :cnext<CR>
nnoremap [[ :cprev<CR>
nnoremap ll :clist<CR>
nnoremap [] :cclose<CR>

command! MakeTags !find / -type f \( -name '.[ch]' -o -name '.cpp' -o -name '.hpp' -o -name '.py' -o -name '.rs' -o -name '.rb' -o -name '.cs' -o -name '.html' -o -name '.css' -o -name '.js' \) -exec ctags -a {} +

nnoremap tt :execute "tag " . expand("<cword>")<CR>
