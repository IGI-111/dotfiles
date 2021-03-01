local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

_G.expand_or_jump = function()
  if vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  else
    return t "<C-j>"
  end
end

vim.api.nvim_set_keymap("i", "<C-j>", "v:lua.expand_or_jump()", {expr = true})
vim.api.nvim_set_keymap("s", "<C-j>", "v:lua.expand_or_jump()", {expr = true})
