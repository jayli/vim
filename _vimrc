" ~/.vimrc by Jayli <lijing00333@163.com> 
" http://jayli.github.com
" for 拔赤, 欢迎拷贝
" MoreInfo:	https://github.com/jayli/vim

"""""""""""""""""""""""""""""""""""""""""""
"
"	VIM 基础配置
"
"""""""""""""""""""""""""""""""""""""""""""

" 使用vim默认配置，推荐这样做
set nocompatible 
" 识别文件类型
filetype plugin indent on 
" 将less,scss识别为css
au BufRead,BufNewFile *.less,*.scss set filetype=css
" 将xtpl,vue,jsx识别为html
au BufRead,BufNewFile *.xtpl,*.we,*.vue,*.jsx set filetype=html
" 将 swift 识别为 js
au BufRead,BufNewFile *.swift set filetype=javascript
" 识别markdown文件
au BufRead,BufNewFile *.mkd,*.markdown,*.mdwn,*.md   set filetype=markdown
" Go 语言配置：执行`:GoBuild`时先在Buf内检查代码错误
au BufRead,BufNewFile *.go set autowrite
" Go 语言配置 Tagbar
au FileType go 
	\ if executable("ctags") && globpath(&rtp, 'plugin/tagbar.vim') != "" |
	\	call tagbar#OpenWindow() |
	\ endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/ignored_files/*
let g:ctrlp_working_path_mode = 'rw'
" js文件格式化，Shift-b
au FileType javascript nnoremap <S-b> :call g:Jsbeautify()<CR>
"css 文件输入:匹配关键字
au Filetype css inoremap <buffer>  :  :<C-X><C-O><C-P>
"默认长度的空格
set backspace=indent,eol,start
" 读写.viminfo文件，不要额外存储
set viminfo='20,\"50 
set formatoptions=mtcql
"鼠标隐藏,鼠标右键无作用
set mouse=v

" 打开文件时，自动定位到上次光标位置
if has ( "autocmd" )
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\   exe "normal g'\"" |
	\ endif
endif  " has ("autocmd") 

"高亮搜索结果
set incsearch
set hlsearch
"高亮当前行和行号
set cursorline
"显示行号
set nu
"欢迎文字
autocmd VimEnter * echo "Welcome back jayli :)"
autocmd VimLeave * echo "Byebye Jayli.."
"自动缩进动作，粘贴自动缩进
set smartindent
"自动缩进长度
set cino=:0g0               
"长句在单词间折行
set wrap
"搜索忽略大小写
set ignorecase
"编辑源备份
set backupcopy=yes
"编辑模式自动缩进
set autoindent 
"记录历史
set history=150 
"标尺
set ruler
"显示不完整的命令
set showcmd
" Added to default to high security within Gentoo. Fixes bug #14088
set modelines=0
"文件编码设定
set fileencodings=ucs-bom,utf-8,GB18030,gbk,big5
"gui字体，随意模式
set guifontset=*-r-*
"语法高亮
syntax enable
syntax on
"tab尺寸定义
set shiftwidth=4
set tabstop=4   "tab
set softtabstop=4
"退出模式，退出时保留残存窗口
set t_ti=
set t_te= 
"最大tab个数
set tabpagemax=40
"关键词字典
set complete-=k complete +=k
"折叠配置
set foldmethod=marker
set foldnestmax=2
set foldenable

"""""""""""""""""""""""""""""""""""""""""""
"
"	VIM 按键映射定义
"
"""""""""""""""""""""""""""""""""""""""""""

" JSHint
nmap <F8> :JSHint<CR>
" tab操作多文件
nmap <C-t> :tabnew 
" NERDTree 配置
nmap wm :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
nmap <Tab> :tabnext<CR> 
nmap <S-Tab> :tabprevious<CR>
"使用 Ctrl+C 或者 Y 复制到系统剪贴板
vnoremap <C-C> "+y
vnoremap Y "+y
"快速左右移动光标
nnoremap <C-l> 10l
nnoremap <C-h> 10h
" 选择模式中触发对齐动作
xmap al <Plug>(EasyAlign)

"空格缩进切换Tab，我的习惯 4 个缩进 Tab
function! g:Transform_Space_To_4_Tab()
	"echo "空格缩进更换为Tab"
	set ts=2
	set noexpandtab
	execute "%retab!"
	set ts=4
	execute "%retab!"
	execute "echo \"缩进符切换为 4 字符宽 Tab !\""
endfunction

"配置缩进整理快捷键
nmap <S-M> <ESC>:call g:Transform_Space_To_4_Tab()<CR>
" Tab 键的配置，基本上都交给 vim-easycomplete 来搞定了
imap <Tab> <Plug>EasyCompTabTrigger
imap <S-Tab> <Plug>EasyCompShiftTabTrigger

" 打开 ctags
nmap mm :TagbarToggle<CR>

" 对于自动补全和代码生成如果 Tab 不好使，必须使用 C-K 展开
"imap <silent> <C-K> <Plug>snipMateNextOrTrigger
"smap <silent> <C-K> <Plug>snipMateNextOrTrigger

" 批量注释：// 批量 Toggle 为注释
xmap // <Plug>Commentary
" CtrlP 设置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"""""""""""""""""""""""""""""""""""""""""""
"
"	VIM 各种编程插件所需的配置
"
"""""""""""""""""""""""""""""""""""""""""""

" Go 编程配置：默认配置
let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
" Go 结构体名字高亮
let g:go_highlight_types = 1
" Go 结构体成员高亮
let g:go_highlight_fields = 1
" Go 函数名高亮
let g:go_highlight_function_calls = 1
" JavaScript 编程配置
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

"""""""""""""""""""""""""""""""""""""""""""
"
"	VIM 主题设置
"
"""""""""""""""""""""""""""""""""""""""""""

"底部&顶部状态栏配置，样式定义在~/.vim/plugin/moonline.vim
"显示顶部Tabline
set showtabline=2
"显示底部Statusline
set laststatus=2
" 颜色设置
set t_Co=256

" 字体设置
if has("unix") && !has("mac")
	set guifont=Inconsolata\ Medium\ 11
	" gui下字体默认样式
	set guifont=Courier\ 10\ Pitch
	set guifontwide=WenQuanYi\ Micro\ Hei\ Mono\ Medium\ 10
endif



" 主题设置 colorscheme molokai {{{
let g:molokai_original = 0
let g:rehash256 = 0
colorscheme molokai  "}}}

" 主题设置 colorscheme alduin {{{
let g:alduin_Shout_Become_Ethereal = 1
"colorscheme alduin "}}}

" 主题设置 colorscheme deep-space {{{
" 通常 Cterm 不支持真彩色，这里基本用原始色显示，复古风格
set background=dark
"colorscheme deep-space "}}}

"colorscheme jellybeans
"colorscheme distinguished
"colorscheme abstract
"colorscheme afterglow
"colorscheme challenger_deep
"colorscheme gotham256

" 固定行高样式 Hack
if exists("g:colors_name") && 
			\ index([
			\	'afterglow','jellybeans','distinguished',
			\	'abstract','molkai','evening','alduin',
			\	'challenger_deep','deep-space','gotham256'
			\ ], g:colors_name) >= 0
	" 固定行高亮样式
	exec "hi CursorLine ctermbg=233"
endif 

" 折叠样式定义
hi Folded     ctermbg=233
" 快捷浮窗样式定义，定义了default（暗）和macos（亮）两种样式
let g:pmenu_scheme = 'macos'
" 常用浮窗样式
if g:pmenu_scheme == 'default'
	hi Pmenu      ctermfg=81  ctermbg=235
	hi PmenuSel   ctermfg=255 ctermbg=240
	hi PmenuSbar  ctermbg=235
	hi PmenuThumb ctermbg=234
elseif g:pmenu_scheme == 'macos'
	hi Pmenu      ctermfg=234 ctermbg=251
	hi PmenuSel   ctermfg=255 ctermbg=26
	hi PmenuSbar  ctermbg=251
	hi PmenuThumb ctermbg=247
endif

" GUI 默认主题
if has("gui_running")
	colorscheme distinguished
endif

"""""""""""""""""""""""""""""""""""""""""""
"
"	JavaScript Vebug 插件快捷键配置 for Debug
"
"""""""""""""""""""""""""""""""""""""""""""

" 开启 NodeJS 调试
nmap <S-R>   <Plug>EasyDebuggerInspect
nmap <S-W>   <Plug>EasyDebuggerWebInspect
" 暂停程序
nmap <F8>    <Plug>EasyDebuggerPause
tmap <F8>    <Plug>EasyDebuggerPause
" 单步执行
nmap <F9>    <Plug>EasyDebuggerNext
tmap <F9>    <Plug>EasyDebuggerNext
" Continue
nmap <F10>   <Plug>EasyDebuggerContinue
tmap <F10>   <Plug>EasyDebuggerContinue
" 进入函数
nmap <F11>   <Plug>EasyDebuggerStepIn
tmap <F11>   <Plug>EasyDebuggerStepIn
" 跳出函数
nmap <S-F11> <Plug>EasyDebuggerStepOut
tmap <S-F11> <Plug>EasyDebuggerStepOut
" 设置断点(TODO)
nmap <F12>   <Plug>EasyDebuggerSetBreakPoint

"""""""""""""""""""""""""""""""""""""""""""
"
"	Pathogen 插件启动
"
"""""""""""""""""""""""""""""""""""""""""""

" 开启 Pathogen 插件管理
execute pathogen#infect()

