local lspconfig = require 'lspconfig'
lspconfig.rust_analyzer.setup {}
lspconfig.tsserver.setup{}

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
vim.api.nvim_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", {noremap = true, silent = true})
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
