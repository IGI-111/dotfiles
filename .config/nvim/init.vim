"    _      _ __        _
"   (_)__  (_) /_ _  __(_)_ _
"  / / _ \/ / __/| |/ / /  ' \
" /_/_//_/_/\__(_)___/_/_/_/_/

call plug#begin()

" Search
Plug 'haya14busa/incsearch.vim'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Motions and general text editing
Plug 'godlygeek/tabular'
Plug 'Tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'wellle/targets.vim'
Plug 'justinmk/vim-sneak'
Plug 'triglav/vim-visual-increment'
Plug 'jiangmiao/auto-pairs'

" Autocompletion
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
Plug 'racer-rust/vim-racer'

" Compilation and linting
Plug 'benekastah/neomake'
Plug 'vhdirk/vim-cmake'
Plug 'dpwright/vim-tup'

" Colorschemes
Plug 'sjl/badwolf'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'NLKNguyen/papercolor-theme'
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'

" Syntax and language integration
Plug 'sheerun/vim-polyglot'
Plug 'IGI-111/vim-deca'
Plug 'dylon/vim-antlr'
Plug 'fatih/vim-go'
Plug 'Chiel92/vim-autoformat'

" Interface
Plug 'junegunn/fzf', { 'dir' : '~/.fzf', 'do' : './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-vinegar'
Plug 'sjl/gundo.vim'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kshenoy/vim-signature'
Plug 'kassio/neoterm'
Plug 'rbong/galvanize.vim'
Plug 'Valloric/ListToggle'

call plug#end()

" ================ General Config ====================

set number                          "Line numbers are good
set cursorline                      "Highlight the line the cursor is on
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1 "Enable cursor shape change
set colorcolumn=99                  "Highlight the character limit
set backspace=indent,eol,start      "Allow backspace in insert mode
set history=1000                    "Store lots of :cmdline history
set showcmd                         "Show incomplete cmds down the bottom
set gcr=a:blinkon0                  "Disable cursor blink
set visualbell                      "No sounds
set autoread                        "Reload files changed outside vim
set laststatus=2                    "Enabling statusline at all times
if &encoding != 'utf-8'
    set encoding=utf-8              "Necessary to show Unicode glyphs
endif
set spelllang=fr,en
set noshowmode                      "Don't show the mode(airline is handling this)
set mouse=a                         "Mouse in terminal
set clipboard=unnamed               "use system clipboard by default
set inccommand=nosplit              "use incremental replace
set diffopt+=vertical               "prefer vertical diffs

"LaTeX configuration
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
autocmd FileType tex setlocal wrap spell textwidth=99

"Setting the colorscheme
if &t_Co >= 256 || has("gui_running")
    set termguicolors
    set background=dark
    colorscheme gruvbox
endif

if &t_Co > 2 || has("gui_running")
    "switch syntax highlighting on, when the terminal has colors
    syntax on
endif

" airline options
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

" neomake options
autocmd! BufWritePost * Neomake
let g:neomake_cpp_clang_maker = {
            \ 'args': ['-fsyntax-only', '-std=c++14', '-Wall', '-Wextra'],
            \ 'errorformat':
            \ '%-G%f:%s:,' .
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%f:%l:%c: %m,'.
            \ '%f:%l: %trror: %m,'.
            \ '%f:%l: %tarning: %m,'.
            \ '%f:%l: %m',
            \ }
let g:neomake_cpp_clangtidy_maker = {
            \ 'exe': 'clang-tidy',
            \ 'args': ['--checks="modernize-*,readability-*,misc-*,clang-analyzer-*"'],
            \ 'errorformat':
            \ '%E%f:%l:%c: fatal error: %m,' .
            \ '%E%f:%l:%c: error: %m,' .
            \ '%W%f:%l:%c: warning: %m,' .
            \ '%-G%\m%\%%(LLVM ERROR:%\|No compilation database found%\)%\@!%.%#,' .
            \ '%E%m',
            \ }
let g:neomake_cpp_enabled_makers = ['clang', 'clangtidy']

let g:neomake_rust_clippy_maker = {
    \ 'exe': 'cargo',
    \ 'args': ['clippy'],
    \ 'errorformat':
        \   '%-Gerror: Could not compile%.%#,'
        \.  '%-Gerror: aborting due to%.%#,'
        \.  '%Eerror[%.%#]: %m,%C\\s%#--> %f:%l:%c,'
        \.  '%Eerror: %m,%C\\s%#--> %f:%l:%c,'
        \.  '%Wwarning: %m,%C\\s%#--> %f:%l:%c,'
        \.  '%I\\s%#= help: %m,'
        \.  '%I\\s%#= note: %m,'
        \,
    \ 'append_file': 0,
    \ }

" Use cargo clippy by default
let g:neomake_rust_enabled_makers = ['clippy']
autocmd BufWritePost *.rs Neomake! cargo

" ultisnips options
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" rainbow parens
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" ANTLR syntax highlighting
au BufRead,BufNewFile *.g set filetype=antlr3
au BufRead,BufNewFile *.g4 set filetype=antlr4

" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
set hidden

" ================ Keybindings ======================

let mapleader = " "

if has('nvim')
  " Hack to get C-h working in NeoVim
  nmap <BS> <C-W>h
endif

nnoremap <silent> <C-k> <C-\><C-n><C-w>k
nnoremap <silent> <C-j> <C-\><C-n><C-w>j
nnoremap <silent> <C-h> <C-\><C-n><C-w>h
nnoremap <silent> <C-l> <C-\><C-n><C-w>l
if exists(':tnoremap')
    tnoremap <silent> <C-k> <C-\><C-n><C-w>k
    tnoremap <silent> <C-j> <C-\><C-n><C-w>j
    tnoremap <silent> <C-h> <C-\><C-n><C-w>h
    tnoremap <silent> <C-l> <C-\><C-n><C-w>l
endif

" autocorrect bindings
map <Leader>z ]s
map <Leader>Z [s

" map Ex mode to last macro
map Q @q

"map visual shift to shift and reselect
vnoremap < <gv
vnoremap > >gv

" AutoPairs
inoremap <buffer> <silent> <C-k> <ESC>:call AutoPairsJump()<CR>a

" FZF
let g:fzf_colors =
            \ { 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }

" NeoTerm
let g:neoterm_size = 10
let g:neoterm_automap_keys = '<Leader>r'
let g:neoterm_shell = "zsh"

"function keys for addons
nnoremap <silent> <Leader>u :GundoToggle<CR>
nnoremap <silent> <Leader>o :TagbarToggle<CR>
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>t :Ttoggle<CR>
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>a :Ag<CR>
noremap <F3> :Autoformat<CR>

if exists(':tnoremap')
    tnoremap <Esc> <C-\><C-n>
endif


" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set viminfo='100,f1  "Save up to 100 marks, enable capital marks

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

map zn <Plug>(incsearch-nohl0):let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hlsearch<CR>
map czn zncgn

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

autocmd Filetype go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

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
set completeopt-=preview    "no scratch window

" deoplete options
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" : "<Tab>"
" deoplete-clang opions
let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header ="/usr/include/clang/"


" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ GUI Options ======================
set guioptions=aegimrLt
