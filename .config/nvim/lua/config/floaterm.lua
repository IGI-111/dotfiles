-- FloatTerm config
--
vim.g.floaterm_position = "center"
vim.g.floaterm_borderchars = {"─", "│", "─", "│", "╭", "╮", "╯", "╰"}

vim.g.floaterm_open_command = "edit"
vim.g.floaterm_gitcommit = "split"

vim.cmd "hi Floaterm guibg=g:terminal_color_background"
vim.cmd "hi FloatermBorder guibg=g:terminal_color_background guifg=g:terminal_color_foreground"

vim.api.nvim_set_keymap("n", "<Leader>t", ":FloatermToggle<CR>", {noremap = true, silent = true})
vim.g.floaterm_keymap_toggle = "<F12>"
