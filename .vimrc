"           _
"          (_)
"  __   ___ _ __ ___  _ __ ___
"  \ \ / / | '_ ` _ \| '__/ __|
"   \ V /| | | | | | | | | (__
"  (_)_/ |_|_| |_| |_|_|  \___|

" Us Vim setting, rather the Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


" =============== NeoBundle Initialization ===============
set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" GitHub repos
NeoBundle 'luochen1990/rainbow'
NeoBundle 'scrooloose/syntastic'
"NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-vinegar'
"NeoBundle 'ervandew/supertab'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'osyo-manga/vim-marching'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Shougo/vimproc', {
			\ 'build' : {
			\     'windows' : 'make -f make_mingw32.mak',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'unix' : 'make -f make_unix.mak',
			\    },
			\ }
"NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'mhinz/vim-signify'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'eagletmt/ghcmod-vim'
NeoBundle 'sheerun/vim-polyglot'
NeoBundle 'godlygeek/tabular'
NeoBundle 'haya14busa/incsearch.vim'
" NeoBundle 'mattn/gist-vim', {'depends': 'mattn/webapi-vim'}
NeoBundle 'osyo-manga/vim-over'

call neobundle#end()

filetype plugin indent on

" ================ General Config ====================

set number                      "Line numbers are good
set cursorline                  "highlight the line the cursor is on
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

"Mouse in terminal
set ttyfast
set ttymouse=urxvt
set mouse=a

"LaTeX configuration
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
au FileType tex setlocal wrap spell

"Setting the colorscheme
if &t_Co >= 256 || has("gui_running")
	colorscheme jellybeans
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

" syntastic options
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -Wall'
let g:syntastic_asm_compiler = 'mips-gcc'
let g:syntastic_asm_dialect = 'intel'

let g:DoxygenToolkit_commentType = "C++"

" use hasktags with tagbar
let g:tagbar_type_haskell = {
			\ 'ctagsbin'  : 'hasktags',
			\ 'ctagsargs' : '-x -c -o-',
			\ 'kinds'     : [
			\  'm:modules:0:1',
			\  'd:data: 0:1',
			\  'd_gadt: data gadt:0:1',
			\  't:type names:0:1',
			\  'nt:new types:0:1',
			\  'c:classes:0:1',
			\  'cons:constructors:1:1',
			\  'c_gadt:constructor gadt:1:1',
			\  'c_a:constructor accessors:1:1',
			\  'ft:function types:1:1',
			\  'fi:function implementations:0:1',
			\  'o:others:0:1'
			\ ],
			\ 'sro'        : '.',
			\ 'kind2scope' : {
			\ 'm' : 'module',
			\ 'c' : 'class',
			\ 'd' : 'data',
			\ 't' : 'type'
			\ },
			\ 'scope2kind' : {
			\ 'module' : 'm',
			\ 'class'  : 'c',
			\ 'data'   : 'd',
			\ 'type'   : 't'
			\ }
			\ }

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#max_list = 10 "should be sufficent

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
	let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

let g:rainbow_active = 1

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

" autocorrect bindings
map zz ]s
map ZZ [s

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
nnoremap <Leader>= :Autoformat<CR>
nnoremap <Leader>s :OverCommandLine<CR>
" inoremap <Leader>s <Esc>:VimShellPop<CR>
nnoremap <Leader>r :RainbowToggle<CR>

" Easymotion mappings
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

nmap <Leader>w <Plug>(easymotion-bd-w)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
nmap <Leader>l <Plug>(easymotion-lineforward)
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
nmap <Leader>h <Plug>(easymotion-linebackward)

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


" ================ Search Settings  =================

set incsearch        "Find the next match as we type the search
" set nohlsearch         "doesn't Hilight searches by default
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
set noexpandtab

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

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

"

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ GUI Options ======================
set guioptions=aegimrLt
