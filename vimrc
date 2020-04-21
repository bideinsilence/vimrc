" My personal .vimrc - trying to keep things simple and generally
" available across different systems.

" Vi(Improved)
set nocompatible

" Automatically load filetype specific options for plugins and indentation
filetype plugin indent on

" Mouse support
set mouse=a

" Encoding
set encoding=utf-8

" Maps system keyboard to Vim's paste buffer
set clipboard=unnamedplus

" Enable sytax processing
syntax on

" My preferred manually installed syntax color scheme
colorscheme molokai

" Use 'ii' to leave insert mode - normal mode
"inoremap ii <Esc>

" Use 'jj' to leave insert mode - normal mode
inoremap jj <Esc>

" Use <Space> for the 'leader' (shortcut) key
let mapleader = " "

" Number of visual spaces per TAB
set tabstop=4

" Number of spaces in TAB when editing
set softtabstop=2

" TABs are spaces
set expandtab

" Number of spaces for reindent operations (<<,>>)
set shiftwidth=2

" Number of characters displayed in one line
set textwidth=79

" Disable automactic line wrapping
set nowrap

" Show line number
set number

" Show line number relative to cursor
set relativenumber

" Display the status bar
set laststatus=2

" Show input mode at botoom
set showmode

" Show the last command entered in bottom right
set showcmd

" Show file stats
set ruler

" Highlight current line
set cursorline

" Highlight current column - visual clue for indentation
set cursorcolumn

" Load filetype-specific indent files
filetype indent on

" Keep indentation consistent with previous line
set autoindent

" Visual autocomplete for command menu
set wildmenu

" Highlight corresponding brackets
set showmatch

" Highlight match when searching
set hlsearch

" Jump to the result of the first match
set incsearch

" New window splits open below and to the right of current
set splitbelow
set splitright

" Resize split by 5 and 10 rather than default 1
noremap <C-w>+ :resize +5<CR>
noremap <C-w>- :resize -5<CR>
noremap <C-w>< :vertical:resize -10<CR>
noremap <C-w>> :vertical:resize +10<CR>

" Using new native Vim plug in manager:
" Load my preferred vim-airline theme at startup
let g:airline_theme='simple'

" Vim-Plug - A minimalist plugin manager - here for loading remote plugins
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
"call plug#begin('~/.vim/plugged')

" List of plugins - make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system -  list ends and plugins become visible to Vim after
" this call
"call plug#end()
