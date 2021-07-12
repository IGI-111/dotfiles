vim.api.nvim_set_keymap("", "<Space>", "<Leader>", {noremap = false, silent = false})

-- Hack to get C-h working in NeoVim
vim.api.nvim_set_keymap("n", "<BS>", "<C-W>h", {noremap = false, silent = false})

vim.api.nvim_set_keymap("n", "<C-k>", "<C-\\><C-n><C-w>k", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-j>", "<C-\\><C-n><C-w>j", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-h>", "<C-\\><C-n><C-w>h", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-l>", "<C-\\><C-n><C-w>l", {noremap = true, silent = true})

-- map Ex mode to last macro
vim.api.nvim_set_keymap("", "Q", "@q", {noremap = false, silent = false})

--map visual shift to shift and reselect
vim.api.nvim_set_keymap("v", "<", "<gv", {noremap = true, silent = false})
vim.api.nvim_set_keymap("v", ">", ">gv", {noremap = true, silent = false})

vim.api.nvim_set_keymap("n", "//", ":noh<CR>", {noremap = true, silent = true})

