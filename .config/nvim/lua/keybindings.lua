vim.cmd 'let mapleader = " "'

-- Hack to get C-h working in NeoVim
vim.api.nvim_set_keymap('n', '<BS>', '<C-W>h', { noremap=false, silent=false})

vim.api.nvim_set_keymap('n', '<C-k>','<C-\\><C-n><C-w>k', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-j>','<C-\\><C-n><C-w>j', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-h>','<C-\\><C-n><C-w>h', {noremap=true, silent=true})
vim.api.nvim_set_keymap('n', '<C-l>','<C-\\><C-n><C-w>l', {noremap=true, silent=true})


-- autocorrect bindings
vim.api.nvim_set_keymap('', '<Leader>z',']s', {noremap=false, silent=false})
vim.api.nvim_set_keymap('', '<Leader>Z','[s', {noremap=false, silent=false})

-- map Ex mode to last macro
vim.api.nvim_set_keymap('', 'Q','@q', {noremap=false, silent=false})

--map visual shift to shift and reselect
vim.api.nvim_set_keymap('v', '<','<gv', {noremap=true, silent=false})
vim.api.nvim_set_keymap('v', '>','>gv', {noremap=true, silent=false})

vim.api.nvim_set_keymap('n', '//', ':noh<CR>', {noremap=true, silent=true})

-- TODO: setup nvim language server setup keymaps
-- nnoremap <F5> :call LanguageClient_contextMenu()<CR>
-- nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
-- nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
-- nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

