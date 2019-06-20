let mapleader = " "

if has('nvim')
  " Hack to get C-h working in NeoVim
  nmap <BS> <C-W>h
endif

nnoremap <silent> <C-k> <C-\><C-n><C-w>k
nnoremap <silent> <C-j> <C-\><C-n><C-w>j
nnoremap <silent> <C-h> <C-\><C-n><C-w>h
nnoremap <silent> <C-l> <C-\><C-n><C-w>l

autocmd TermOpen * setlocal nonumber


" autocorrect bindings
map <Leader>z ]s
map <Leader>Z [s

" map Ex mode to last macro
map Q @q

"map visual shift to shift and reselect
vnoremap < <gv
vnoremap > >gv

"function keys for addons
nnoremap <silent> <Leader>u :GundoToggle<CR>
nnoremap <silent> <Leader>o :TagbarToggle<CR>
nnoremap <silent> <Leader>n :NERDTreeToggle<CR>
nnoremap <silent> <Leader>t :Ttoggle<CR>
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>r :Rg<CR>

if exists(':tnoremap')
    tnoremap <Esc> <C-\><C-n>
endif

nnoremap <silent> // :noh<CR>

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

