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
Plug 'unblevable/quick-scope'
Plug 'triglav/vim-visual-increment'
Plug 'matze/vim-move'
Plug 'tpope/vim-sleuth'

" Autocompletion
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim'
" Plug 'carlitux/deoplete-ternjs'
" Plug 'sebastianmarkow/deoplete-rust'
" Plug 'zchee/deoplete-clang'

" Plug 'roxma/nvim-completion-manager'
" Plug 'roxma/nvim-cm-racer'
" Plug 'roxma/nvim-cm-tern',  {'do': 'npm insgall'}

Plug 'w0rp/ale'

" Colorschemes
Plug 'sjl/badwolf'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'NLKNguyen/papercolor-theme'
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'blueshirts/darcula'
Plug 'atelierbram/vim-colors_atelier-schemes'

" Syntax and language integration
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'IGI-111/vim-deca'
Plug 'dylon/vim-antlr'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tweekmonster/django-plus.vim'
Plug 'Shougo/echodoc.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'modille/groovy.vim'

" Formatting
Plug 'Chiel92/vim-autoformat'


" Interface
Plug 'junegunn/fzf', { 'dir' : '~/.fzf', 'do' : './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-vinegar'
Plug 'sjl/gundo.vim'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'kshenoy/vim-signature'
Plug 'kassio/neoterm'
Plug 'rbong/galvanize.vim'
Plug 'Valloric/ListToggle'
Plug 'equalsraf/neovim-gui-shim'

call plug#end()
