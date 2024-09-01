set tabstop=2
set softtabstop=2
set shiftwidth=2
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'

" 保存时自动检查语法
let g:clang_check_syntax_auto = 1

" 格式化代码
let g:clang_format_auto = 1

" 代码风格
let g:clang_format_style = 'LLVM'

map <buffer> <LEADER>r :!clear && time clang %:p -o %:p:r && %:p:r<CR>

