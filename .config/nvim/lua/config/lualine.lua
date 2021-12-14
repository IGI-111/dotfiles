require("lualine").setup {
  options = {
    theme = "palenight",
    section_separators = {nil, nil},
    component_separators = {nil, nil},
    icons_enabled = false
  },
  sections = {
    lualine_a = {"mode"},
    lualine_b = {"branch"},
    lualine_c = {"filename"},
    lualine_x = {"encoding", "fileformat", "filetype"},
    lualine_y = {
      {"diagnostics", sources = {"nvim_diagnostic", "coc", "ale"}},
      "progress"
    },
    lualine_z = {"location"}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {
      {"diagnostics", sources = {"nvim_diagnostic", "coc", "ale"}}
    },
    lualine_c = {"filename"},
    lualine_x = {"location"},
    lualine_y = {},
    lualine_z = {}
  }
}
