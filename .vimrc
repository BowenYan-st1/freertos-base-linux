"设置配色方案
colorscheme OceanicNext

set completeopt=preview,menu

filetype plugin on

"共享剪贴板
set clipboard=unnamed

"自动保存
set autowrite

"显示标尺
set ruler

"设置魔术
set magic

"关闭vi兼容模式
set nocompatible

"打开语法高亮模式
set syntax=on

"自动缩进，继承前一行的缩进
set autoindent
set cindent

"智能缩进
set si

"设置所有Tab和缩进为4个空格
set tabstop=4

"设置<<和>>为移动宽度为4个空格
set shiftwidth=4

"缩进用空格表示
set noexpandtab

"按退格键时可以删除4个空格
set softtabstop=4
set smarttab

"搜索逐字符高亮"
set hlsearch
set incsearch

"搜索时不区分大小写"
"还可以使用简写（“:set ic”和“:set noic”）"
set ignorecase

"输入的命令显示出来，看的清楚"
set showcmd

"在处理未保存或只读文件的时候，弹出确认"
set confirm

"文件类型自动检测，代码智能补全"
set completeopt=longest,preview,menu

"显示行号
set number

"显示相对行号
set relativenumber

"回退历史记录1000
set history=1000

"默认编码格式为utf-8
set enc=utf-8

"未识别的编码格式，默认按下列顺序进行识别
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"设置语言编码
set langmenu=zh_CN.UTF-8
set helplang=cn

"激活鼠标的使用
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"通过使用commands命令，告诉我们文件的哪一行被改变过
set report=0

"高亮显示匹配的括号
set showmatch

"开启新行时使用智能自动缩进"
set smartindent
set cin

"短暂跳转到匹配括号的时间
set matchtime=1

"保持在光标上下最少行数
set scrolloff=3

"NERDtree设置
map <F4> : NERDTreeMirror <CR>
map <F4> : NERDTreeToggle <CR>

"键盘映射
imap jk <ESC>
"nmap <SPACE> :

" 分屏窗口移动, Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"gtags设置
set cscopetag " 使用 cscope 作为 tags 命令

set cscopeprg='gtags-cscope' " 使用 gtags-cscope 代替 cscope

"gtags.vim 设置项

let GtagsCscope_Auto_Load = 1

let CtagsCscope_Auto_Map = 1

let GtagsCscope_Quiet = 1

"ctags设置
nmap <C-i> <C-]>
nmap <C-o> <C-t>

"set tags=/home/bowen/project/CppLearn/tags

"cscope设置
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=0
    set cst
    set csverb
    set cspc=3
    "add any database in current dir
    if filereadable("cscope.out")
        cs add cscope.out
    "else search cscope.out elsewhere
    else
       let cscope_file=findfile("cscope.out", ".;")
       let cscope_pre=matchstr(cscope_file, ".*/")
       if !empty(cscope_file) && filereadable(cscope_file)
           exe "cs add" cscope_file cscope_pre
       endif      
     endif
endif
let cs_auto_jump = 0
"cscope 快捷键设置
nmap <C-0>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-0>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-0>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-0>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-0>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-0>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-0>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
nmap <C-0>i :cs find i <C-R>=expand("<cfile>")<CR><CR>:copen<CR>










