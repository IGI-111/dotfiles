" deoplete options
let g:deoplete#enable_at_startup = 1
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" : "<Tab>"

" deoplete-clang opions
let g:deoplete#sources#clang#libclang_path = "/usr/lib/libclang.so"
let g:deoplete#sources#clang#clang_header ="/usr/include/clang/"
let g:deoplete#sources#rust#racer_binary="/usr/bin/racer"
let g:deoplete#sources#rust#rust_source_path="/usr/src/rust/src/"
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete
