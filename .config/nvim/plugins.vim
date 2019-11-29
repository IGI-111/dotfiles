call plug#begin()

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
Plug 'unblevable/quick-scope'
Plug 'triglav/vim-visual-increment'
Plug 'matze/vim-move'
Plug 'tpope/vim-sleuth'

" Autocompletion
Plug 'w0rp/ale'
" Plug 'zxqfl/tabnine-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-rls', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}

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
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tweekmonster/django-plus.vim'
Plug 'Shougo/echodoc.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'modille/groovy.vim'

" Interface
Plug 'junegunn/fzf', { 'dir' : '~/.fzf', 'do' : './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-vinegar'
Plug 'sjl/gundo.vim'
Plug 'majutsushi/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'kshenoy/vim-signature'
Plug 'kassio/neoterm'
Plug 'rbong/galvanize.vim'
Plug 'Valloric/ListToggle'
Plug 'equalsraf/neovim-gui-shim'

call plug#end()
