" Basic
" =====
set nocompatible            " Make sure `nocompatible` to use the full features of vim
filetype plugin indent on   " Load plugins according to detected filetype
syntax on                   " Enable syntax highlighting

" ui
set title                   " Show the filename in the window titlebar
set number                  " Show line numbers
set ruler                   " Show cursor position in status bar
set showmode                " Show current mode in command-line
set showcmd                 " Show already typed keys when more are expected
set showmatch               " Show matching brackets
set report      =0          " Always report changed lines
set wildmenu                " Enable a menu that shows tab completion options in the status bar
set laststatus  =2          " Always show statusline
set shortmess   =atI        " Don’t show the intro message when starting Vim

" indent
set autoindent              " Indent according to previous line
set expandtab               " Use spaces instead of tabs
set softtabstop =4          " Tab key indents by 4 spaces
set shiftwidth  =4          " >> indents by 4 spaces
set shiftround              " >> indents to next multiple of 'shiftwidth'

" search
set incsearch               " Highlight while searching with / or ?
set hlsearch                " Keep matches highlighted
set ignorecase              " Ignore case when searching
set smartcase               " Automatically switch search to case-sensitive when search query contains an uppercase letter

" performance
set ttyfast                 " Faster redrawing
set lazyredraw              " Only redraw when necessary

" misc
set backspace   =indent,eol,start  " Make backspace work as you would expect
set hidden                  " Switch between buffers without having to save first
set display     =lastline   " Show as much as possible of the last line
set splitbelow              " Open new windows below the current window
set splitright              " Open new windows right of the current window
set wrapscan                " Searches wrap around end-of-file
set synmaxcol   =200        " Only highlight the first 200 columns
set encoding    =utf8       " Enable utf8 support
set clipboard   =unnamed    " Use the OS clipboard by default
set mouse       =a          " Enable mouse in all modes

" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

" set control character(tab, trail...), use `set list` to turn on
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

" Key bindings
" ============
let mapleader=","           " Change mapleader
nnoremap U <C-R>            " `u`: undo, and `U`: redo the last undo
