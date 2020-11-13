" PLUGINS
" ---
set shell=/bin/zsh
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'

	Plugin 'vim-pandoc/vim-pandoc'
	Plugin 'vim-pandoc/vim-pandoc-syntax'
	Plugin 'yggdroot/indentline'
	Plugin 'ryanoasis/vim-devicons'
	Plugin 'sonph/onehalf', { 'rtp': 'vim' }

call vundle#end()

let g:pandoc#modules#disabled=["folding"]

" FORMATTING
" ---
set backspace=2

" Indenting
filetype plugin indent on
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab

" Syntax Highlighting
syntax on
set showmatch

" Line Numbers
set number

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" THEMING
" ---
set background=light
set t_Co=256
set cursorline
colorscheme onehalflight

set noshowcmd
set shortmess+=F
set ls=0

if exists('+termguicolors')
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
	set termguicolors
endif

