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

" Aid in pasting text unmodified from other applications, can be set manually
" as :set paste, :set nopaste
set pastetoggle=<F2>

" Enable sytax processing
syntax on

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

" My preferred window navigation
" <leader>w instead of <C-w> for window commands
nnoremap <leader>w <C-w>
" Quicker/easier window movement
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l


" --- netrw ---
"
" Native File explorer settings
" Nerdtree like setup:
" For a similar experience use :Lex, :vertical resize 28
" No banner
"let g:netrw_banner = 0
" Tree view
"let g:netrw_liststyle = 3
" Open file with <cr> in previous window
"let g:netrw_browse_split = 4
" Open vertical splits to the right
"let g:netrw_altv = 1
" Set view/split size to a portion of the left screen
"let g:netrw_winsize = 28
" Run on starting vim
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END


" --- Plugins ----
"
" Vim-Plug - A minimalist plugin manager
"
" Automatic installation - Vim
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Automatic installation - Neovim
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"
" Plugins will be downloaded under the specified directory.
" - For Neovim: stdpath('data') . '/plugged'
"   * I'm curently using the same plugin directory for both Vim/Nvim. 
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
"
" Declare the list of plugins
" - Make sure you use single quotes
" - Shorthand notation; fetches https://github.com/junegunn/vim-easy-align:
" Plug 'junegunn/vim-easy-align'
" - Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" - Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
"
" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
" Vim-airline-themes.
Plug 'vim-airline/vim-airline-themes'
" The NERDTree is a file system explorer for the Vim editor.
Plug 'scrooloose/nerdtree'
" Adds icons to your plugins
Plug 'ryanoasis/vim-devicons'
" Insert or delete br:ackets, parens, quotes in pair.
" - When using coc, also using coc-pairs
"Plug 'jiangmiao/auto-pairs'
" Make your Vim/Neovim as smart as VSCode.
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Jinja bundle for vim.
Plug 'lepture/vim-jinja'
" A dark color scheme for Vim heavily inspired by the look of the Dark+ scheme of Visual Studio Code.
Plug 'tomasiser/vim-code-dark'
" Molokai is a Vim port of the monokai theme for TextMate
Plug 'tomasr/molokai'
" Bad Wolf - A Vim colorscheme pieced together by Steve Losh.
Plug 'sjl/badwolf'
" gruvbox is heavily inspired by badwolf, jellybeans and solarized.
Plug 'morhetz/gruvbox'
" An arctic, north-bluish clean and elegant Vim color theme.
Plug 'arcticicestudio/nord-vim'
"
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
"
" -- Commands --
"
" :PlugInstall will install plugins
" :PlugUpdate will update or install plugins
" :PlugClean will remove unlisted plugins 
" :PlugUgrade will Upgrade vim-plug itself


" --- Colors ---
"
" Load my preferred syntax color scheme at startup.
colorscheme molokai

" Load my preferred vim-airline theme at startup.
let g:airline_theme='codedark'


" --- Plugin Settings ---
"
" Have NERDTree show hidden files by default.
let NERDTreeShowHidden=1
" Toggle NERDTree w/ <leader>N
nnoremap <leader>N :NERDTreeToggle<CR>
"
"
" -- For coc - Conquer of Completion --
"
" coc.nvim works best on ... consider upgrade your vim.
" - Some features may behave incorrectly.
let g:coc_disable_startup_warning = 1
"
" TextEdit might fail if hidden is not set.
set hidden
"
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup
"
" Give more space for displaying messages.
set cmdheight=2
"
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300
"
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
"
" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
"
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"
" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
"
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
"
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')
"
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
"
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
"
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
"
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
"
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
"
" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
"
" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif
"
" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)
"
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
"
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"
" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
