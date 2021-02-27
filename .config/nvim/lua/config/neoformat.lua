vim.api.nvim_set_keymap('n', '<F3>', ':Neoformat<CR>', { noremap=true, silent=true})
vim.cmd 'autocmd BufWritePre * undojoin | Neoformat'
