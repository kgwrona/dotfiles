set nocompatible

" ===Plugins===

call plug#begin()

	Plug 'itchyny/lightline.vim'     " statusbar
	Plug 'scrooloose/nerdtree'       " file manager
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'tpope/vim-surround'        " change surrounding marks
	Plug 'tpope/vim-commentary'
	" Language-specific
	Plug 'PotatoesMaster/i3-vim-syntax'
	Plug 'vim-python/python-syntax'
	Plug 'sersorrel/vim-lilypond'
	Plug 'lervag/vimtex'

call plug#end()

" ===General===
filetype plugin indent on
syntax enable
set hidden
set incsearch
set wildmenu
set clipboard+=unnamedplus
set number relativenumber
set noshowmode                   " don't show mode as it's shown in lightline bar

" Case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Enable mouse
set mouse=nicr
set mouse=a


" ===Indentation===
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
