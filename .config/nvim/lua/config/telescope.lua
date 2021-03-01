require("telescope").setup {
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case"
    }
  }
}

vim.api.nvim_set_keymap("n", "<Leader>q", ":Telescope quickfix<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>l", ":Telescope loclist<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>f", ":Telescope find_files<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<Leader>r", ":Telescope live_grep<CR>", {noremap = true, silent = true})
