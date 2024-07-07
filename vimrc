set nocompatible       " 关闭兼容模式
set termguicolors      " 设置真颜色
let mapleader=" "      " 设置leader键,主键
set enc=utf-8          " 文件编码
syntax on              " 代码高亮
set number             " 左侧显示行号
set relativenumber     " 相对行号显示
set cursorline         " 突出显示当前行
set wrap               " 文本自动换行
set showcmd            " 显示正在键入的动作
set wildmenu           " 菜单命令补全
set hlsearch           " 搜索高亮
set incsearch          " 搜索结果即时显示
set noignorecase       " 搜索区分大小写
set nosmartcase        " 搜索智能区分大小写
set tabstop=4          " 制表符长度
set autoindent         " 自动缩进
set softtabstop=4      " Tap
set expandtab          " 用空格代替制表符
set shiftwidth=4       " 自动缩进和宽度
set smarttab           " 自动Tab
set smartindent        " 智能缩进
set autoindent         " 智能缩进，联系上下文
set cindent            " C,C++的智能缩进
set signcolumn=yes     " 左侧显示更多内容
set updatetime=100     " 响应速度

" 开启插件
" syntax enable
filetype plugin indent on

" 光标状态
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[2 q" "EI = NORMAL mode (ELSE)

" 配色
" https://github.com/tomasr/molokai
 colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1


" ======= undofile文件修改历史记录 =======

if has("persistent_undo")
    let target_path = expand('~/.undodir')
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif
    let &undodir=target_path
    set undofile
endif




" ======= 插件安装 =======
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin()

" 状态栏
Plug 'vim-airline/vim-airline'

" 按键提示
Plug 'liuchengxu/vim-which-key'

" 中文文档
Plug 'yianwillis/vimcdoc'

" 文件目录
Plug 'scrooloose/nerdtree'

" undotree
Plug 'mbbill/undotree'


" MarkDown预览
" Plug 'instant-markdown/vim-instant-markdown', {'for': ['markdown'], 'do': 'yarn install'} 

" 制表插件
Plug 'dhruvasagar/vim-table-mode',{'for': ['markdown']}

" rust
Plug 'rust-lang/rust.vim',{'for': ['rust']}

" python
Plug 'davidhalter/jedi-vim',{'for': ['python']}

call plug#end()





" ======= 插件管理 =======
source ~/.vim/which_key.vim
source ~/.vim/vim_table_mode.vim

" ======= rust.vim =======
let g:rustfmt_autosave = 1

" ======= python jedi =======
" let g:pymode_rope = 0

" . 触发自动补全
let g:jedi#popup_on_dot = 0

" 函数参数显示模式 1 or 2
let g:jedi#show_call_signatures = "2"

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

" ======= airline =======

" 使用powerline 打过补丁的字体
" let g:airline_powerline_fonts = 1
" 开启状态栏
let g:airline#extensions#tabline#enabled = 1
" 显示 buffer 编
let g:airline#extensions#tabline#buffer_nr_show = 1

" ======= vim-instant-markdown =======

" 是否使用慢速模式，默认为 0（关闭）
let g:instant_markdown_slow = 0

" 自动开启Markdown 实时预览
let g:instant_markdown_autostart = 0

" 支持 LaTeX 公式渲染
let g:instant_markdown_mathjax = 0

" 启用 Mermaid.js 支持流程图和序列图
let g:instant_markdown_mermaid = 0

" 预览窗口跟随编辑窗口自动滚动
let g:instant_markdown_autoscroll = 1


" ======= 按键映射 =======

" ======= VIMRC =======

autocmd BufRead,BufNewFile vimrc inoremap <buffer> `= " =======  =======<Esc>6F=hi

" ======= gitcommit =======
autocmd Filetype gitcommit map <LEADER>d ggdd:0r !date +"\%Y-\%m-\%d \%H:\%M:\%S"<CR>

" ======= markdown =======

function! Markdown_map()
    inoremap <buffer> `> <Esc>/<++><CR>:nohlsearch<CR>c4l
    inoremap <buffer> `b **** <++><Esc>F*hi
    inoremap <buffer> `* ** <++><Esc>F*i
    inoremap <buffer> `` `` <++><Esc>F`i
    inoremap <buffer> `c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
    inoremap <buffer> `1 #<Space><Enter><++><Esc>kA
    inoremap <buffer> `2 ##<Space><Enter><++><Esc>kA
    inoremap <buffer> `3 ###<Space><Enter><++><Esc>kA
    inoremap <buffer> `4 ####<Space><Enter><++><Esc>kA
    inoremap <buffer> `5 #####<Space><Enter><++><Esc>kA
    inoremap <buffer> `6 ######<Space><Enter><++><Esc>kA
    inoremap <buffer> `p ![](<++>) <++><Esc>F[a
    inoremap <buffer> `j <img src="" width="auto<++>" height="auto<++>" alt="None"<++>><++><Esc>0f"a
    inoremap <buffer> `~ ~~~~ <++><Esc>F~hi
    inoremap <buffer> `- ---<Enter><Enter>
    inoremap <buffer> `= ===<Enter><Enter>
    inoremap <buffer> `l --------<Enter>
    inoremap <buffer> `i <++>
    inoremap <buffer> `a [](<++>)<++><Esc>F[a
    inoremap <buffer> `m <span id="move"></span><++><Esc>F"i
    map <buffer> <LEADER>r :InstantMarkdownPreview<CR>
endfunction

" ======= rust =======
function! Rust_map()
    inoremap <buffer> `> <Esc>/<++><CR>:nohlsearch<CR>c4l
    inoremap <buffer> `( ()<++><Esc>F(a
    inoremap <buffer> `[ []<++><Esc>F[a
    inoremap <buffer> `{ {}<Esc>F{a
    inoremap <buffer> `' ''<++><Esc>F'i
    inoremap <buffer> `" ""<++><Esc>F"i
    " cargo check
    map <buffer> <LEADER>c :w<CR>:!clear && cargo check <CR>
    map <buffer> <LEADER>C :w<CR>:below terminal ++rows=10 cargo check<CR>
endfunction

" ======= Python =======

function! Python_map()
    inoremap <buffer> `> <Esc>/<++><CR>:nohlsearch<CR>c4l
    inoremap <buffer> `( ()<++><Esc>F(a
    inoremap <buffer> `[ []<++><Esc>F[a
    inoremap <buffer> `{ {}<++><Esc>F{a
    inoremap <buffer> `' ''<++><Esc>F'i
    inoremap <buffer> `" ""<++><Esc>F"i
    " Python run
    map <buffer> <LEADER>r :w<CR>:!clear && python %<CR>
    map <buffer> <LEADER>R :w<CR>:below terminal ++rows=10 python %<CR>
    map <buffer> <LEADER>b :w<CR>:!python -m black %<CR>
endfunction

" ======= others =======

autocmd Filetype markdown call Markdown_map()
autocmd Filetype python call Python_map()
autocmd Filetype rust call Rust_map()

" 按键映射,保存并退出
map <LEADER>q :wq<CR>

" 按键映射,保存
map <LEADER><Space> :w<CR>

" 按键映射,打开NERDTree
map <LEADER>n :NERDTreeToggle<CR>

" 按键映射,打开UndotreeToggle
map <LEADER>u :UndotreeToggle<CR>

" 取消高亮
map <LEADER>/ :nohlsearch<CR>

" V模式块移动
vmap J :m '>+1<CR>gv=gv
vmap K :m '<-2<CR>gv=gv
