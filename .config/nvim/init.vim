"    _      _ __        _
"   (_)__  (_) /_ _  __(_)_ _
"  / / _ \/ / __/| |/ / /  ' \
" /_/_//_/_/\__(_)___/_/_/_/_/

call plug#begin()

Plug 'easymotion/vim-easymotion'
Plug 'Shougo/neoinclude.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
"Plug 'airblade/vim-gitgutter'
"Plug 'mhinz/vim-signify'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir' : '~/.fzf', 'do' : './install --all' }
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-vinegar'
Plug 'sjl/gundo.vim'
Plug 'majutsushi/tagbar'
Plug 'sheerun/vim-polyglot'
Plug 'dpwright/vim-tup'
Plug 'godlygeek/tabular'
Plug 'osyo-manga/vim-over'
Plug 'Tpope/vim-commentary'
Plug 'Shougo/deoplete.nvim'
Plug 'benekastah/neomake'
Plug 'vhdirk/vim-cmake'
Plug 'sjl/badwolf'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'NLKNguyen/papercolor-theme'
Plug 'Chiel92/vim-autoformat'

call plug#end()

" ================ General Config ====================

set number                      "Line numbers are good
set cursorline                  "Highlight the line the cursor is on
set colorcolumn=80              "Highlight the character limit
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set laststatus=2                "Enabling statusline at all times
if &encoding != 'utf-8'
    set encoding=utf-8          "Necessary to show Unicode glyphs
endif
set spelllang=fr,en
set noshowmode                  "Don't show the mode(airline is handling this)
set mouse=a                     "Mouse in terminal
set clipboard=unnamed           "use system clipboard by default

"LaTeX configuration
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
autocmd FileType tex setlocal wrap spell

"Setting the colorscheme
if &t_Co >= 256 || has("gui_running")
    set background=dark
    colorscheme PaperColor
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
set hidden

" ================ Keybindings ======================

let mapleader = " "

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

function! GetBufferList()
    redir =>buflist
    silent! ls!
    redir END
    return buflist
endfunction

function! ToggleList(bufname, pfx)
    let buflist = GetBufferList()
    for bufnum in map(filter(split(buflist, '\n'), 'v:val =~ "'.a:bufname.'"'), 'str2nr(matchstr(v:val, "\\d\\+"))')
        if bufwinnr(bufnum) != -1
            exec(a:pfx.'close')
            return
        endif
    endfor
    if a:pfx == 'l' && len(getloclist(0)) == 0
        echohl ErrorMsg
        echo "Location List is Empty."
        return
    endif
    let winnr = winnr()
    exec(a:pfx.'open')
    if winnr() != winnr
        wincmd p
    endif
endfunction

" easymotion
nmap s <Plug>(easymotion-s2)


"function keys for addons
nnoremap <silent> <Leader>u :GundoToggle<CR>
nnoremap <silent> <Leader>t :TagbarToggle<CR>
nnoremap <silent> <Leader>r :RainbowParenthesesToggle<CR>
nnoremap <silent> <leader>e :call ToggleList("Location List", 'l')<CR>
noremap <F3> :Autoformat<CR>

if exists(':tnoremap')
    tnoremap <Esc> <C-\><C-n>
endif

" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
set viminfo='100,f1  "Save up to 100 marks, enable capital marks
set nohlsearch

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

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

" deoplete options
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" : "<Tab>"

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ GUI Options ======================
set guioptions=aegimrLt
