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

" Autocompletion
Plug 'Shougo/deoplete.nvim'
Plug 'sebastianmarkow/deoplete-rust'
Plug 'zchee/deoplete-clang'
Plug 'carlitux/deoplete-ternjs'

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
