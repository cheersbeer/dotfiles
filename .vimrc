" for dein.vim
" if &compatible
"   set nocompatible
" endif
" dein.vim$B%$%s%9%H!<%k;~$K;XDj$7$?%G%#%l%/%H%j$r%;%C%H(B
let s:dein_dir = expand('/Users/takafusa/dotfiles/.vim/dein')

" dein.vim$B$N<BBN$,$"$k%G%#%l%/%H%j$r%;%C%H(B
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim$B$,B8:_$7$F$$$J$$>l9g$O(Bgithub$B$+$i(Bclone
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " dein.toml, dein_layz.toml$B%U%!%$%k$N%G%#%l%/%H%j$r%;%C%H(B
  let s:toml_dir = expand('~/.config/nvim')

  " $B5/F0;~$KFI$_9~$`%W%i%0%$%s72(B
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " $BCY1dFI$_9~$_$7$?$$%W%i%0%$%s72(B
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set langmenu=en_US.UTF-8

set backspace=indent,eol,start

au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.ejs set filetype=js
au BufNewFile,BufRead *.ejs set filetype=php

set nobackup
set cindent
set autoindent
set backspace=indent,eol,start
set number
set showmode
set showmatch
set list
" set listchars=tab:\ \ ,extends:<,trail:\
set listchars=tab:\ \ ,extends:<
set incsearch
set ignorecase
set smartcase
set ruler
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
set whichwrap=b,s,h,l,<,>,[,],~
set display=lastline
set notitle
set laststatus=2
set clipboard=unnamed
set expandtab
" set cursorline
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

filetype indent on
set tabstop=2
augroup vimrc
autocmd! FileType zsh setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType css setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType js setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd! FileType php setlocal shiftwidth=4 tabstop=4 softtabstop=2
augroup END

syntax on

set background=dark
autocmd ColorScheme *  highlight LineNr ctermfg=31
autocmd ColorScheme *  highlight Normal ctermbg=none
autocmd ColorScheme *  highlight LineNr ctermbg=none
colorscheme hybrid

autocmd BufWritePost *.py call Flake8()
