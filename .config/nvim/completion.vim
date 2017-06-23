inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let $RUST_SRC_PATH='/usr/src/rust/src'

" Use deoplete.
let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header ="/usr/include/clang/"
let g:deoplete#sources#rust#racer_binary="/usr/bin/racer"
let g:deoplete#sources#rust#rust_source_path="/usr/src/rust/src/"
