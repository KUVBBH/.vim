set tabstop=2
set softtabstop=2
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'

" 保存时自动检查语法
let g:clang_check_syntax_auto = 1

" 格式化代码
let g:clang_format_auto = 1

" 代码风格
let g:clang_format_style = 'LLVM'

" keymap
inoremap <buffer> `> <Esc>/<++><CR>:nohlsearch<CR>c4l
inoremap <buffer> `( ()<++><Esc>F(a
inoremap <buffer> `< <><++><Esc>2F<a
inoremap <buffer> `[ []<++><Esc>F[a
inoremap <buffer> `{ {}<Esc>F{a
inoremap <buffer> `' ''<++><Esc>F'i
inoremap <buffer> `" ""<++><Esc>F"i
