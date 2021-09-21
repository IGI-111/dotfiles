local cmd = vim.cmd
cmd "packadd paq-nvim"
local paq = require "paq-nvim".paq
paq {"savq/paq-nvim", opt = true}

-- Git integration
paq "tpope/vim-fugitive"
paq "nvim-lua/plenary.nvim"
paq "lewis6991/gitsigns.nvim"

-- Snippets
paq "hrsh7th/vim-vsnip"
paq "hrsh7th/vim-vsnip-integ"
paq "stevearc/vim-vsnip-snippets"
paq "rafamadriz/friendly-snippets"

-- Motions and general text editing
paq "godlygeek/tabular"
paq "Tpope/vim-commentary"
paq "tpope/vim-repeat"
paq "tpope/vim-abolish"
paq "tpope/vim-surround"
paq "wellle/targets.vim"
paq "triglav/vim-visual-increment"
paq "matze/vim-move"
paq "tpope/vim-sleuth"

-- LSP
paq "neovim/nvim-lspconfig"

-- Autocompletion
-- paq 'zxqfl/tabnine-vim'
paq "hrsh7th/nvim-compe"

-- Formatting
paq "mhartington/formatter.nvim"

-- Colorschemes
paq {"sjl/badwolf", opt = true}
paq {"chriskempson/vim-tomorrow-theme", opt = true}
paq {"NLKNguyen/papercolor-theme", opt = true}
paq {"nanotech/jellybeans.vim", opt = true}
paq {"morhetz/gruvbox", opt = true}
paq {"blueshirts/darcula", opt = true}
paq {"atelierbram/vim-colors_atelier-schemes", opt = true}
paq "drewtempelmeyer/palenight.vim"

-- Syntax and language integration
paq {"nvim-treesitter/nvim-treesitter", run = 'function() vim.cmd"TSUpdate" end'}
paq "p00f/nvim-ts-rainbow"

-- Interface
paq "simnalamburt/vim-mundo"
paq "majutsushi/tagbar"
paq "hoob3rt/lualine.nvim"
paq "kshenoy/vim-signature"
paq "voldikss/vim-floaterm"
paq "nvim-lua/popup.nvim"
paq "nvim-lua/plenary.nvim"
paq "nvim-telescope/telescope.nvim"
paq 'tamago324/lir.nvim'
-- paq 'kyazdani42/nvim-web-devicons'
