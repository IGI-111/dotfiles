local actions = require'lir.actions'
local mark_actions = require 'lir.mark.actions'
local clipboard_actions = require'lir.clipboard.actions'

require'lir'.setup {
  show_hidden_files = true,
  devicons_enable = false,
  mappings = {
    ['<CR>']     = actions.edit,
    ['<C-s>'] = actions.split,
    ['<C-v>'] = actions.vsplit,
    ['<C-t>'] = actions.tabedit,

    ['-']     = actions.up,
    ['q']     = actions.quit,

    ['d']     = actions.mkdir,
    ['%']     = actions.newfile,
    ['R']     = actions.rename,
    ['<C-g>']     = actions.cd,
    ['y']     = actions.yank_path,
    ['H']     = actions.toggle_show_hidden,
    ['D']     = actions.delete,
  },
  float = {
    winblend = 0,

    -- -- You can define a function that returns a table to be passed as the third
    -- -- argument of nvim_open_win().
    -- win_opts = function()
    --   local width = math.floor(vim.o.columns * 0.8)
    --   local height = math.floor(vim.o.lines * 0.8)
    --   return {
    --     border = require("lir.float.helper").make_border_opts({
    --       "+", "─", "+", "│", "+", "─", "+", "│",
    --     }, "Normal"),
    --     width = width,
    --     height = height,
    --     row = 1,
    --     col = math.floor((vim.o.columns - width) / 2),
    --   }
    -- end,
  },
  hide_cursor = false,
}

-- custom folder icon
-- require'nvim-web-devicons'.setup({
--   override = {
--     lir_folder_icon = {
--       icon = "🮹🮺",
--       color = "#7ebae4",
--       name = "LirFolderNode"
--     },
--   }
-- })


vim.api.nvim_set_keymap(
  'n',
  '-',
  [[<Cmd>execute 'e ' .. expand('%:p:h')<CR>]],
  { noremap = true }
)

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
