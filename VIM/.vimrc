"==============================通用设置=================================
" 无格式粘贴
set paste
" 设置当文件被改动时自动载入
set autoread
" 设置正则表达式
set regexpengine=1
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 共享剪贴板  
set clipboard+=unnamed 
" 从不备份  
set nobackup
" make 运行
:set makeprg=g++\ -Wall\ \ %
" 自动保存
set autowrite          
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
syntax on
syntax enable
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目
set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
"==============================显示设置================================= 
" 设定窗口位置  
" winpos 80 0  
" 设定窗口大小       
" set lines=33 columns=135 
" 用浅色高亮当前行
" autocmd InsertLeave * se nocul    
" 用浅色高亮当前行
autocmd InsertEnter * se cul
" 显示标尺      
set ruler
" 突出显示当前行
set cursorline       
" 设置魔术           
set magic     
" 输入的命令显示出来，看的清楚些             
set showcmd          
" 命令行（在状态行下）的高度，默认为1，这里是2
set cmdheight=2
" 我的状态行显示的内容（包括文件类型和解码）
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}    
" 启动显示状态行(1),总是显示状态行(2)  
set laststatus=2 
" 允许折叠  
set foldenable      
" 手动折叠  
set foldmethod=manual  
" 去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
set nocompatible 
" 设置配色方案
set t_Co=256
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
highlight LineNr ctermfg=11
highlight LineNr ctermbg=black
colorscheme solarized
