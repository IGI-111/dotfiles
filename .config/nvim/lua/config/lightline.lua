-- Lightline
vim.g.lightline = { colorscheme= 'palenight' }

vim.g.lightline.component_expand = {
    linter_checking = 'lightline#ale#checking',
    linter_warnings = 'lightline#ale#warnings',
    linter_errors = 'lightline#ale#errors',
    linter_ok = 'lightline#ale#ok',
}
vim.g.lightline.component_type = {
    linter_checking = 'left',
    linter_warnings = 'warning',
    linter_errors = 'error',
    linter_ok = 'left',
}
vim.g.lightline.active = {
    right = {'linter_checking', 'linter_errors', 'linter_warnings'}
}
