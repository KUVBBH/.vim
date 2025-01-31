let ConfigPath = ''

let PlugList = [
    \ ['all', 'plug.vim'],
    \ ['all', 'which_key.vim'],
    \ ['all', 'airline.vim'],
    \ ['all', 'auto_pairs.vim'],
    \ ['markdown', 'vim_table_mode.vim'],
    \ ['python', 'python.vim'],
    \ ['rust', 'rust.vim'],
    \ ['markdown', 'markdown.vim'],
    \ ['c', 'clang.vim'],
    \ ['cpp', 'clang.vim'],
    \ ]

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
set background=dark
colorscheme hybrid
" colorscheme codedark
" colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1
" vim-hybrid

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


" ======= 插件设置 =======

if ConfigPath == '' 
    let ConfigPath = fnamemodify(expand('$MYVIMRC'), ':h').'/'
endif
for [filetype,plugpath] in PlugList
    if filetype == 'all'
        execute 'source '.ConfigPath.plugpath
    else
        execute 'autocmd Filetype '.filetype.' source '.ConfigPath.plugpath
    endif
endfor

" ======= 按键映射 =======

" vimrc
autocmd BufRead,BufNewFile vimrc inoremap <buffer> ,= " =======  =======<Esc>6F=hi

" .gitcommit
autocmd Filetype gitcommit map <LEADER>d ggdd:0r !date +"\%Y-\%m-\%d \%H:\%M:\%S"<CR>

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
