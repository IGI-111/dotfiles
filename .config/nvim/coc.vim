inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<C-j>'

call coc#config('coc.languageserver', {
      \ 'ccls': {
      \   'command': 'ccls',
      \   'filetypes': ['c', 'cpp', 'cuda', 'objc', 'objcpp'],
      \   'rootPatterns': ['.ccls', 'compile_commands.json', '.vim/', '.git/', '.hg/'],
      \   'initializationOptions': { 'cache': { 'directory': '.ccls-cache' } },
      \ },
      \})
call coc#config("coc.preferences.diagnostic.displayByAle", 1)
