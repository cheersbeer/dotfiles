set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

set backspace=indent,eol,start

set tabstop=2
augroup vimrc
autocmd! FileType zsh setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType js setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=2
augroup END

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.ejs set filetype=js
au BufNewFile,BufRead *.ejs set filetype=php

set nobackup
set cindent
set shiftwidth=2
set autoindent
set number
set showmode
set showmatch
set list
set listchars=tab:\ \ ,extends:<,trail:\
set incsearch
set ignorecase
set smartcase
set ruler

syntax on

set background=dark
autocmd ColorScheme *  highlight LineNr ctermfg=31
autocmd ColorScheme *  highlight Normal ctermbg=none
autocmd ColorScheme *  highlight LineNr ctermbg=none
colorscheme hybrid

set nohlsearch
set hidden
set noswapfile
set vb t_vb=
set novisualbell
set notitle
set autowrite
set scrolloff=5
set history=59
set wildmode=full:list
set paste
set whichwrap=b,s,<,>,[,]
set display=lastline
set notitle
set laststatus=2
set clipboard=unnamed
set expandtab
