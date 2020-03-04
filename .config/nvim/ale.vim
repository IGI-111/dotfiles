let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 0
call ale#Set('rust_cargo_use_clippy', 1)

nnoremap <silent> K :ALEHover<CR>
nnoremap <silent> gd :ALEGoToDefinition<CR>
nnoremap <silent> <F2> :ALEFindReferences<CR>
nnoremap <F3> :ALEFix<CR>

let g:ale_linters = {
\ 'typescript': ['tslint', 'tsserver', 'typecheck', 'xo'],
\ 'rust': ['rls', 'cargo']
\}
let g:ale_fixers = {
\ 'typescript': ['prettier', 'eslint'],
\ 'javascript': ['prettier', 'eslint'],
\ 'haskell': ['brittany'],
\ 'rust': ['rustfmt'],
\ 'ocaml': ['ocamlformat']
\}
let g:ale_javascript_prettier_use_local_config = 1
