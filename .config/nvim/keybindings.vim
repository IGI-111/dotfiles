let mapleader = " "

if has('nvim')
  " Hack to get C-h working in NeoVim
  nmap <BS> <C-W>h
endif

nnoremap <silent> <C-k> <C-\><C-n><C-w>k
nnoremap <silent> <C-j> <C-\><C-n><C-w>j
nnoremap <silent> <C-h> <C-\><C-n><C-w>h
nnoremap <silent> <C-l> <C-\><C-n><C-w>l
if exists(':tnoremap')
    tnoremap <silent> <C-k> <C-\><C-n><C-w>k
    tnoremap <silent> <C-j> <C-\><C-n><C-w>j
    tnoremap <silent> <C-h> <C-\><C-n><C-w>h
    tnoremap <silent> <C-l> <C-\><C-n><C-w>l
endif

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
nnoremap <silent> <Leader>a :Ag<CR>
noremap <F3> :Autoformat<CR>

if exists(':tnoremap')
    tnoremap <Esc> <C-\><C-n>
endif
