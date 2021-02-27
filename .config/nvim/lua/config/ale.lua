vim.g.ale_fix_on_save = 1
vim.g.ale_completion_enabled = 0
vim.fn["ale#Set"]('rust_cargo_use_clippy', 1)

vim.g.ale_linters = {
 typescript= {'tslint', 'tsserver', 'typecheck', 'xo'},
 rust= {'rls', 'cargo'}
}
vim.g.ale_fixers = {
 typescript= {'prettier', 'eslint'},
 javascript= {'prettier', 'eslint'},
 haskell= {'brittany'},
 rust= {'rustfmt'},
 ocaml= {'ocamlformat'}
}
vim.g.ale_javascript_prettier_use_local_config = 1
