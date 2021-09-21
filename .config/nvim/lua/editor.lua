vim.cmd "set number" -- Line numbers are good
vim.o.cursorline = false -- Highlight the line the cursor is on
vim.o.colorcolumn = "99" -- Highlight the character limit
vim.o.backspace = "indent,eol,start" -- Allow backspace in insert mode
vim.o.history = 1000 -- Store lots of :cmdline history
vim.o.showcmd = true -- Show incomplete cmds down the bottom
vim.o.gcr = "a:blinkon0" -- Disable cursor blink
vim.o.visualbell = true -- No sounds
vim.o.autoread = true -- Reload files changed outside vim
vim.o.laststatus = 2 -- Enabling statusline at all times
vim.o.encoding = "utf-8" -- Show unicode glyphs
vim.o.spelllang = "fr,en" -- Set spelling dictionaries
vim.o.showmode = false -- Don't show the mode(airline is handling this)
vim.o.mouse = "a" -- Mouse in terminal
vim.o.inccommand = "nosplit" -- use incremental replace
vim.o.diffopt = "internal,filler,closeoff,vertical" -- prefer vertical diffs
vim.o.shortmess = "OtI" -- disable start message

-- colorscheme config
vim.cmd "syntax on"
vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd "colorscheme palenight"

-- LaTeX config
vim.o.grepprg = "grep -nH $*"
vim.g.tex_flavor = "latex"
vim.cmd "autocmd FileType tex setlocal wrap spell textwidth=99"

-- no line numbers in terminal
vim.cmd "autocmd TermOpen * setlocal nonumber"

-- search settings
vim.o.incsearch = true
vim.o.viminfo = "'100,f1"

-- turn off swap files
vim.o.swapfile = false
vim.o.backup = false
vim.o.wb = false

-- persistent undo
vim.o.undofile = true

-- indentation
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.expandtab = false

vim.cmd "filetype plugin on"
vim.cmd "filetype indent on"

-- display tabs and trailing space visually
vim.o.list = true
vim.o.listchars = [[trail:·,tab:┊ ,extends:>,precedes:<,nbsp:·]]

vim.o.wrap = false
vim.o.linebreak = true

-- folds

vim.o.foldmethod = "indent" --fold based on indent
vim.o.foldnestmax = 3 --deepest fold is 3 levels
vim.o.foldenable = false --dont fold by default

-- scrolling
vim.o.scrolloff = 8 --Start scrolling when we're 8 lines away from margins
vim.o.sidescrolloff = 15
vim.o.sidescroll = 1
