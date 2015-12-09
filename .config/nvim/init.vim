call plug#begin()

Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'kien/rainbow_parentheses.vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-vinegar'
Plug 'sjl/gundo.vim'
Plug 'majutsushi/tagbar'
Plug 'sheerun/vim-polyglot'
Plug 'dpwright/vim-tup'
Plug 'godlygeek/tabular'
Plug 'osyo-manga/vim-over'
Plug 'haya14busa/incsearch.vim'
Plug 'Tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim'
Plug 'sjl/badwolf'
Plug 'chriskempson/vim-tomorrow-theme'


call plug#end()

filetype plugin indent on

" ================ General Config ====================

set number                      "Line numbers are good
set cursorline                  "highlight the line the cursor is on
set colorcolumn=80
set nohlsearch                  "No Highlighting by default
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set laststatus=2                "Enabling statusline at all times
set encoding=utf-8              "Necessary to show Unicode glyphs
set spelllang=fr,en
set noshowmode                  "Don't show the mode(airline is handling this)
set mouse=a                     "Mouse in terminal

"LaTeX configuration
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
autocmd FileType tex setlocal wrap spell

"Setting the colorscheme
if &t_Co >= 256 || has("gui_running")
    set background=dark
    colorscheme Tomorrow-Night-Eighties
endif

if &t_Co > 256 || has("gui_running")
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if &t_Co > 2 || has("gui_running")
    "switch syntax highlighting on, when the terminal has colors
    syntax on
endif

" Setting the airline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" old vim-powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''

" smarter tabline
let g:airline#extensions#tabline#enabled = 1

" syntastic options
autocmd FileType qf setlocal wrap
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall'
let g:syntastic_asm_compiler = 'mips-gcc'
let g:syntastic_asm_dialect = 'intel'

" deoplete options
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" :
            \ deoplete#mappings#manual_complete()


" ultisnips options
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" ================ Keybindings ======================

let mapleader = " "

" arrow keys are bad
" inoremap <Up>     <NOP>
" inoremap <Down>   <NOP>
" inoremap <Left>   <NOP>
" inoremap <Right>  <NOP>
" nnoremap <Up>     <NOP>
" nnoremap <Down>   <NOP>
" nnoremap <Left>   <NOP>
" nnoremap <Right>  <NOP>

nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" autocorrect bindings
map <Leader>z ]s
map <Leader>Z [s

" map Ex mode to last macro
map Q @q

"map visual shift to shift and reselect
vnoremap < <gv
vnoremap > >gv

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction

"function keys for addons
nnoremap <Leader>e :<C-u>call ToggleErrors()<CR>
nnoremap <Leader>u :GundoToggle<CR>
nnoremap <Leader>t :TagbarToggle<CR>
nnoremap <Leader>r :RainbowToggle<CR>

" Easymotion mappings
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

nmap <Leader>w <Plug>(easymotion-bd-w)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

"incsearch settings
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" :h g:incsearch#auto_nohlsearch
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

if exists(':tnoremap')
    tnoremap <Esc> <C-\><C-n>
endif

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=trail:·,tab:┊\ ,extends:>,precedes:<,nbsp:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Completion =======================

set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ GUI Options ======================
set guioptions=aegimrLt

