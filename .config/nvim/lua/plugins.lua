require "paq" {
    "savq/paq-nvim";

    -- Git integration
    "tpope/vim-fugitive";
    "nvim-lua/plenary.nvim";
    "lewis6991/gitsigns.nvim";

    -- Snippets
    "hrsh7th/vim-vsnip";
    "hrsh7th/vim-vsnip-integ";
    "stevearc/vim-vsnip-snippets";
    "rafamadriz/friendly-snippets";

    -- Motions and general text editing
    "godlygeek/tabular";
    "Tpope/vim-commentary";
    "tpope/vim-repeat";
    "tpope/vim-abolish";
    "tpope/vim-surround";
    "wellle/targets.vim";
    "triglav/vim-visual-increment";
    "matze/vim-move";
    "tpope/vim-sleuth";

    -- LSP
    "neovim/nvim-lspconfig";

    -- Autocompletion
    --     'zxqfl/tabnine-vim'
    "hrsh7th/nvim-compe";

    -- Formatting
    "mhartington/formatter.nvim";

    -- Colorschemes
    {"sjl/badwolf", opt = true};
    {"chriskempson/vim-tomorrow-theme", opt = true};
    {"NLKNguyen/papercolor-theme", opt = true};
    {"nanotech/jellybeans.vim", opt = true};
    {"morhetz/gruvbox", opt = true};
    {"blueshirts/darcula", opt = true};
    {"atelierbram/vim-colors_atelier-schemes", opt = true};
    "drewtempelmeyer/palenight.vim";

    -- Syntax and language integration
    {"nvim-treesitter/nvim-treesitter", run = 'function() vim.cmd"TSUpdate" end'};
    "p00f/nvim-ts-rainbow";

    -- Interface
    "simnalamburt/vim-mundo";
    "majutsushi/tagbar";
    "hoob3rt/lualine.nvim";
    "kshenoy/vim-signature";
    "voldikss/vim-floaterm";
    "nvim-lua/popup.nvim";
    "nvim-lua/plenary.nvim";
    "nvim-telescope/telescope.nvim";
    'tamago324/lir.nvim';
    --     'kyazdani42/nvim-web-devicons'
}
