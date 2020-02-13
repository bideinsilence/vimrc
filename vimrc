      " My personal .vimrc - trying to keep things simple and generally
" available across different systems.

" Vi(Improved)
set nocompatible

" Mouse support
set mouse=a

" Encoding
set encoding=utf-8

" Enable sytax processing
syntax enable

" My preferred manually installed syntax color scheme
colorscheme molokai

" Use 'ii' to leave insert mode
:imap ii <Esc>

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

" Vim-Plug - Plug in manager
" Specific Directory for plugins
call plug#begin('~/.vim/plugins')

" List of plugins
Plug 'vim-airline/vim-airline'

" List ends and plugins become visible to Vim after this call
call plug#end()

" Load my preferred airline theme at startup
let g:airline_theme='simple'
