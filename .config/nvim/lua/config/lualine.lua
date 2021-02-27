local lualine = require('lualine')
lualine.options = {
    theme = 'onedark',
    section_separators = {nil, nil},
    component_separators = {nil, nil},
    icons_enabled = false,
}
lualine.sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location'  },
}
lualine.inactive_sections = {
    lualine_a = {  },
    lualine_b = { { 'diagnostics', sources ={'nvim_lsp', 'coc', 'ale'}} },
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {  },
    lualine_z = {  }
}
lualine.status()
