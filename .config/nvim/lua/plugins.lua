return require("packer").startup(function()
    use 'wbthomason/packer.nvim'

    -- Git integration
    use "tpope/vim-fugitive"
    use "nvim-lua/plenary.nvim"
    use "lewis6991/gitsigns.nvim"

    -- Snippets
    use "hrsh7th/vim-vsnip"
    use "hrsh7th/vim-vsnip-integ"
    use "stevearc/vim-vsnip-snippets"
    use "rafamadriz/friendly-snippets"

    -- Motions and general text editing
    use "godlygeek/tabular"
    use "Tpope/vim-commentary"
    use "tpope/vim-repeat"
    use "tpope/vim-abolish"
    use "tpope/vim-surround"
    use "wellle/targets.vim"
    use "triglav/vim-visual-increment"
    use "matze/vim-move"
    use "tpope/vim-sleuth"

    -- LSP
    use "neovim/nvim-lspconfig"

    -- Autocompletion
    --     'zxqfl/tabnine-vim'
    use "hrsh7th/nvim-compe"

    -- Formatting
    use "mhartington/formatter.nvim"

    -- Colorschemes
    use {"sjl/badwolf", opt = true};
    use {"chriskempson/vim-tomorrow-theme", opt = true};
    use {"NLKNguyen/papercolor-theme", opt = true};
    use {"nanotech/jellybeans.vim", opt = true};
    use {"morhetz/gruvbox", opt = true};
    use {"blueshirts/darcula", opt = true};
    use {"atelierbram/vim-colors_atelier-schemes", opt = true};
    use "drewtempelmeyer/palenight.vim";

    -- Syntax and language integration
    use {"nvim-treesitter/nvim-treesitter", run = ':TSUpdate'}
    use "p00f/nvim-ts-rainbow"

    -- Interface
    use "simnalamburt/vim-mundo"
    use "majutsushi/tagbar"
    use "hoob3rt/lualine.nvim"
    use "kshenoy/vim-signature"
    use "voldikss/vim-floaterm"
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use 'tamago324/lir.nvim'
    --     'kyazdani42/nvim-web-devicons'
end)
