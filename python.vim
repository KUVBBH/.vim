" ======= python jedi =======

" . 触发自动补全
let g:jedi#popup_on_dot = 1

" 函数参数显示模式 1 or 2
let g:jedi#show_call_signatures = "2"

let g:jedi#use_tabs_not_buffers = 1

" 自动补全禁用
" let g:jedi#completions_enabled = 0

" 自动补全提示精简
autocmd FileType python setlocal completeopt-=preview

" 通用跳转命令
let g:jedi#goto_command = "<leader>d"

" 设置跳转到变量或函数赋值位置的快捷键
let g:jedi#goto_assignments_command = ""

" 跳转声明
let g:jedi#goto_stubs_command = ""

" 设置跳转到函数、类或模块定义位置的快捷键
let g:jedi#goto_definitions_command = ""

" 显示当前光标下 Python 对象的__doc__
let g:jedi#documentation_command = ""

" 显示当前光标下 Python 对象的所有引用位置
let g:jedi#usages_command = "<leader>f"

" 触发代码补全 "<C-Space>"
let g:jedi#completions_command = "<C-Space>"

" 重命名当前光标下 Python 对象的所有位置
let g:jedi#rename_command = "<leader>i"

" 保留且重命名当前光标下 Python 对象的所有位置
let g:jedi#rename_command_keep_name = "<leader>I"

map <buffer> <LEADER>r :w<CR>:!clear && python %<CR>
map <buffer> <LEADER>R :w<CR>:below terminal ++rows=10 python %<CR>
map <buffer> <LEADER>b :w<CR>:!python -m black %<CR>
