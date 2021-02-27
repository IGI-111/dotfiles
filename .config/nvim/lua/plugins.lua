local cmd = vim.cmd
cmd 'packadd paq-nvim'
local paq = require'paq-nvim'.paq
paq{'savq/paq-nvim', opt=true}

-- Git integration
paq 'tpope/vim-fugitive'
paq 'airblade/vim-gitgutter'

-- Snippets
paq 'hrsh7th/vim-vsnip'
paq 'hrsh7th/vim-vsnip-integ'
-- paq 'stevearc/vim-vsnip-snippets'

-- Motions and general text editing
paq 'godlygeek/tabular'
paq 'Tpope/vim-commentary'
paq 'tpope/vim-repeat'
paq 'tpope/vim-abolish'
paq 'tpope/vim-surround'
paq 'wellle/targets.vim'
paq 'triglav/vim-visual-increment'
paq 'matze/vim-move'
paq 'tpope/vim-sleuth'

-- Autocompletion
-- paq 'w0rp/ale'
-- paq 'zxqfl/tabnine-vim'
paq 'neovim/nvim-lspconfig'
paq 'hrsh7th/nvim-compe' 

-- Formatting
paq 'sbdchd/neoformat'

-- Colorschemes
paq {'sjl/badwolf', opt=true}
paq {'chriskempson/vim-tomorrow-theme', opt=true}
paq {'NLKNguyen/papercolor-theme', opt=true}
paq {'nanotech/jellybeans.vim', opt=true}
paq {'morhetz/gruvbox', opt=true}
paq {'blueshirts/darcula', opt=true}
paq {'atelierbram/vim-colors_atelier-schemes', opt=true}
paq 'drewtempelmeyer/palenight.vim'

-- Syntax and language integration
paq {'nvim-treesitter/nvim-treesitter', run='function() vim.cmd"TSUpdate" end'}

-- Interface
paq 'p00f/nvim-ts-rainbow'
paq 'tpope/vim-vinegar'
paq {'simnalamburt/vim-mundo', opt=true}
paq {'majutsushi/tagbar', opt=true}
paq 'itchyny/lightline.vim'
paq 'maximbaz/lightline-ale'
-- paq 'hoob3rt/lualine.nvim'
paq 'kshenoy/vim-signature'
paq 'voldikss/vim-floaterm'
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'
