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

-- language server keybindings
vim.api.nvim_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {noremap=true, silent=true})
-- vim.api.nvim_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', {noremap=true, silent=true})
-- vim.api.nvim_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', {noremap=true, silent=true})
-- vim.api.nvim_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', {noremap=true, silent=true})
vim.api.nvim_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap(
  "n",
  "<space>e",
  "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>",
  {noremap = true, silent = true}
)
vim.api.nvim_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap(
  "n",
  "<space>q",
  "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>",
  {noremap = true, silent = true}
)
