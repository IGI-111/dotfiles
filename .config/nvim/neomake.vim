autocmd! BufWritePost * Neomake
let g:neomake_cpp_clang_maker = {
            \ 'args': ['-fsyntax-only', '-std=c++14', '-Wall', '-Wextra'],
            \ 'errorformat':
            \ '%-G%f:%s:,' .
            \ '%f:%l:%c: %trror: %m,' .
            \ '%f:%l:%c: %tarning: %m,' .
            \ '%f:%l:%c: %m,'.
            \ '%f:%l: %trror: %m,'.
            \ '%f:%l: %tarning: %m,'.
            \ '%f:%l: %m',
            \ }
let g:neomake_cpp_clangtidy_maker = {
            \ 'exe': 'clang-tidy',
            \ 'args': ['--checks="modernize-*,readability-*,misc-*,clang-analyzer-*"'],
            \ 'errorformat':
            \ '%E%f:%l:%c: fatal error: %m,' .
            \ '%E%f:%l:%c: error: %m,' .
            \ '%W%f:%l:%c: warning: %m,' .
            \ '%-G%\m%\%%(LLVM ERROR:%\|No compilation database found%\)%\@!%.%#,' .
            \ '%E%m',
            \ }
let g:neomake_cpp_enabled_makers = ['clang', 'clangtidy']

let g:neomake_rust_clippy_maker = {
    \ 'exe': 'cargo',
    \ 'args': ['clippy'],
    \ 'errorformat':
        \   '%-Gerror: Could not compile%.%#,'
        \.  '%-Gerror: aborting due to%.%#,'
        \.  '%Eerror[%.%#]: %m,%C\\s%#--> %f:%l:%c,'
        \.  '%Eerror: %m,%C\\s%#--> %f:%l:%c,'
        \.  '%Wwarning: %m,%C\\s%#--> %f:%l:%c,'
        \.  '%I\\s%#= help: %m,'
        \.  '%I\\s%#= note: %m,'
        \,
    \ 'append_file': 0,
    \ }

" Use cargo clippy by default
let g:neomake_rust_enabled_makers = ['cargo', 'clippy']
