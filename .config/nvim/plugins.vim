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
Plug 'matze/vim-move'
Plug 'tpope/vim-sleuth'

" Autocompletion
Plug 'Shougo/deoplete.nvim'
Plug 'carlitux/deoplete-ternjs'
Plug 'racer-rust/vim-racer'
Plug 'zchee/deoplete-clang'
" Plug 'roxma/nvim-completion-manager'
" Plug 'roxma/nvim-cm-racer'
" Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
" Plug 'autozimu/LanguageClient-neovim'

" Compilation and linting
" Plug 'benekastah/neomake'
Plug 'w0rp/ale'
Plug 'vhdirk/vim-cmake'
Plug 'dpwright/vim-tup'

" Colorschemes
Plug 'sjl/badwolf'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'NLKNguyen/papercolor-theme'
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'

" Syntax and language integration
Plug 'IGI-111/vim-deca'
Plug 'leafgarland/typescript-vim'
Plug 'dylon/vim-antlr'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tweekmonster/django-plus.vim'
Plug 'Shougo/echodoc.vim'

" Formatting
Plug 'Chiel92/vim-autoformat'


" Interface
Plug 'junegunn/fzf', { 'dir' : '~/.fzf', 'do' : './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-vinegar'
Plug 'sjl/gundo.vim'
Plug 'majutsushi/tagbar'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'kshenoy/vim-signature'
Plug 'kassio/neoterm'
Plug 'rbong/galvanize.vim'
Plug 'Valloric/ListToggle'
Plug 'equalsraf/neovim-gui-shim'

call plug#end()
