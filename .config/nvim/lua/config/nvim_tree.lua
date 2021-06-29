vim.g.nvim_tree_show_icons = {
  git = 1,
  folders = 1,
  files = 1,
  folder_arrows = 1,
}

vim.g.nvim_tree_lsp_diagnostics = 1
vim.g.nvim_tree_width = 35
vim.g.nvim_tree_disable_window_picker = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_auto_open = 1

vim.g.nvim_tree_icons = {
  default= '',
  symlink= '',
  git= {
    unstaged= "●",
    staged= "●",
    unmerged= "",
    renamed= "➜",
    untracked= "🞅",
    deleted= "",
    ignored= "◌"
  },
  folder= {
    arrow_open= "🞃",
    arrow_closed= "🞂",
    default= "",
    open= "",
    empty= "",
    empty_open= "",
    symlink= "",
    symlink_open= "",
  },
  lsp= {
    hint= "H",
    info= "I",
    warning= "W",
    error= "E",
  }
}
local tree_cb = require 'nvim-tree.config'.nvim_tree_callback

vim.g.nvim_tree_bindings = {
  ["<C-g>"] = tree_cb("cd"),
  ["<C-s>"] = tree_cb("split")
}

vim.api.nvim_set_keymap("n", "-", ":NvimTreeFindFile<CR>", {noremap = true, silent = true})
