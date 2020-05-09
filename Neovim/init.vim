" PLUGINS
" ---
set shell=/bin/zsh
set nocompatible
filetype off

set runtimepath+=$HOME/.config/nvim/bundle/neobundle.vim
call neobundle#begin(expand("$HOME/.config/nvim/bundle"))

	NeoBundle 'vim-pandoc/vim-pandoc'
	NeoBundle 'vim-pandoc/vim-pandoc-syntax'
	NeoBundle 'yggdroot/indentline'
	NeoBundle 'ryanoasis/vim-devicons'

call neobundle#end()

let g:pandoc#modules#disabled=["folding"]
lua require 'colorize'.setup(nil, { names = false; })

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
set termguicolors
set background=dark

set noshowcmd
set shortmess+=F
set ls=0

NeoBundleCheck
