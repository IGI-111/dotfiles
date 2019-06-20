inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

call coc#config('coc.languageserver', {
      \ 'ccls': {
      \   'command': 'ccls',
      \   'filetypes': ['c', 'cpp', 'cuda', 'objc', 'objcpp'],
      \   'rootPatterns': ['.ccls', 'compile_commands.json', '.vim/', '.git/', '.hg/'],
      \   'initializationOptions': { 'cache': { 'directory': '.ccls-cache' } },
      \ },
      \})
call coc#config("coc.preferences.diagnostic.displayByAle", 1)
