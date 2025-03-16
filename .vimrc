set number

let g:jellybeans_use_term_italics = 1
colorscheme jellybeans

" 关闭vi兼容模式
set nocompatible

" 启用语法高亮
syntax enable

" 启用文件类型检测插件
filetype plugin on

" 递归查找子文件, 和家目录
set path+=**
set path+=~
" 展示match的文件列表
set wildmenu

"字体设置
set guifont=Inconsolata:h12

"ctags设置
set tags=tags;/
set tags+=./tags;
nnoremap <F5> :!ctags -R %:p<cr>
"设置主题颜色"
"colorscheme torte

autocmd FileType c,cpp setlocal smartindent

nnoremap [b <cmd>:bprevious<cr>
nnoremap ]b <cmd>:bnext<cr>

" 允许使用鼠标
set mouse=a

" 自动缩进
set autoindent
set smartindent

" 使用空格代替制表符，并设置缩进宽度为4个空格
set expandtab
set tabstop=4
set shiftwidth=4

" 显示匹配的括号
set showmatch
set matchtime=2 " 匹配括号闪烁的时间（单位：十分之一秒）

" 搜索时忽略大小写
set ignorecase
" 但是当搜索包含大写字母时则区分大小写
set smartcase

" 高亮当前行
set cursorline

" 启用撤销历史记录
set undofile
set undodir=~/.vim/undodir
set undolevels=1000
set undoreload=10000

" 文件编码
set encoding=utf-8
set fileencodings=utf-8,gbk,gb2312,latin1

" 在底部状态栏显示文件类型、文件格式等信息
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime('%d/%m/%y\ %H:%M')}

" 当文件被外部程序修改时自动加载
set autoread
autocmd FocusGained,BufEnter * checktime

" 搜索时启用增量搜索
set incsearch
" 搜索时高亮所有匹配项
set hlsearch
"自动清除高亮
nnoremap <silent> <Esc> :nohlsearch<CR>

" 启用行号背景色交替
set background=dark
"highlight LineNr ctermfg=DarkGray
