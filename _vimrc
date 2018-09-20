" ~/.vimrc by Jayli <lijing00333@163.com> 
" http://jayli.github.com
" for 拔赤, 欢迎拷贝
"
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

"默认长度的空格
set backspace=indent,eol,start

" 读写.viminfo文件，不要额外存储
set viminfo='20,\"50 
set formatoptions=mtcql

"鼠标隐藏,鼠标右键无作用
set mouse=v

" 字体设置
if has("unix") && !has("mac")
	set guifont=Inconsolata\ Medium\ 11
	" gui下字体默认样式
	set guifont=Courier\ 10\ Pitch
	set guifontwide=WenQuanYi\ Micro\ Hei\ Mono\ Medium\ 10
endif

if has("mac")
	set guifont=Monaco:h13
endif

if has ( "autocmd" )
	" 打开文件时，自动定位到上次光标位置
	autocmd BufReadPost *
	\ if line("'\"") > 0 && line ("'\"") <= line("$") |
	\   exe "normal g'\"" |
	\ endif
endif  " has ("autocmd") 

" js文件格式化，Shift-b
map <S-b> :call g:Jsbeautify()<CR>

"编辑器样式hack
hi Comment      term=bold ctermfg=darkcyan
hi Constant     term=underline ctermfg=Red
hi Special      term=bold ctermfg=Magenta
hi Identifier   term=underline ctermfg=cyan
hi Statement    term=bold ctermfg=Brown
hi PreProc      term=bold ctermfg=DarkYellow
hi Type         term=bold ctermfg=DarkGreen
hi Ignore       ctermfg=white
hi Error        term=reverse ctermbg=Red ctermfg=White
hi Todo         term=standout ctermbg=Yellow ctermfg=Red
hi Search       term=standout ctermbg=Yellow ctermfg=Black
hi ErrorMsg     term=reverse ctermbg=Red ctermfg=White

"高亮搜索结果
set incsearch
set hlsearch

"高亮当前行和行号
set cursorline

"显示行号
set nu

"状态栏
set laststatus=2
"状态栏样式定义在~/.vim/plugin/moonline.vim

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
"文件编码
set fileencodings=ucs-bom,utf-8,GB18030,gbk,big5
"gui字体，随意模式
set guifontset=*-r-*

"语法高亮
syntax enable
syntax on

" JSHint
nmap <F8> :JSHint<CR>

"tab操作多文件
nmap <C-t> :tabnew 
nmap wm :NERDTreeToggle<CR>
nmap <Tab> :tabnext<CR> 
nmap <S-Tab> :tabprevious<CR>

"使用 Ctrl+C 或者 Y 复制到系统剪贴板
vnoremap <C-C> "+y
vnoremap Y "+y

"快速左右移动光标
map <C-l> <ESC>10l
map <C-h> <ESC>10h

"tab尺寸
set shiftwidth=4
set tabstop=4   "tab
set softtabstop=4

"空格缩进切换Tab，我的习惯 4 个缩进 Tab
function! g:TransformSpaceTo4Tab()
	"echo "空格缩进更换为Tab"
	set ts=2
	set noexpandtab
	execute "%retab!"
	set ts=4
	execute "%retab!"
	execute "echo \"缩进符切换为 4 字符宽 Tab !\""
endfunction

"配置缩进整理快捷键
nmap <S-M> <ESC>:call g:TransformSpaceTo4Tab()<CR>

" Tab 键的配置，基本上都交给 vim-easycomplete 来搞定了
imap <Tab> <Plug>EasyCompTabTrigger
imap <S-Tab> <Plug>EasyCompShiftTabTrigger

" 如果 Tab 不好使，必须使用C-K展开
"imap <silent> <C-K> <Plug>snipMateNextOrTrigger
"smap <silent> <C-K> <Plug>snipMateNextOrTrigger

"css 文件输入:匹配关键字
autocmd Filetype css inoremap <buffer>  :  :<C-X><C-O><C-P>

"退出模式，退出时保留残存窗口
set t_ti=
set t_te= 

" 颜色设置
set t_Co=256

"选择编辑器主题
"colorscheme blue
"colorscheme darkblue
"colorscheme default
"colorscheme delek
"colorscheme desert
"colorscheme elflord
"colorscheme darkburn  "依赖.vim/colors/darkburn.vim
"colorscheme evening
"colorscheme koehler
"colorscheme morning
"colorscheme murphy
"colorscheme pablo
"colorscheme peachpuff
"colorscheme ron
"colorscheme shine
"colorscheme torte
"colorscheme zellner
"colorscheme gemcolors 
"colorscheme distinguished
colorscheme molokai 

"显示tab line
set showtabline=2

"最大tab个数
set tabpagemax=40

"关键词字典
set complete-=k complete +=k

" 注释生成
let g:DoxygenToolkit_authorName="jayli, bachi@taobao.com" 
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_versionString=""
let g:DoxygenToolkit_compactOneLineDoc = "yes"

" 注释生成
function! InsertDox()
	"return "\:".getline('.')
	" 空行C-D生成文件注释
	if getline('.') =~ '^\s*$'
		return "\:DoxAuthor\<CR>"
	else 
	" 非空行C-D生成函数注释
		return "\:Dox\<CR>\<ESC>"
endfunction

" C-D生成注释
imap <expr> <C-D> InsertDox()

if has("gui_running")
	colorscheme distinguished
endif

"折叠配置
"文件打开不能自动折叠，奇怪
set foldmethod=marker
set foldnestmax=2
set foldenable
hi Folded ctermbg=233

" pathogen 插件所辖编程配置:
"
" Go 编程配置
let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" JavaScript 编程配置
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" 选择模式中激发对齐
xmap al <Plug>(EasyAlign)

" 开启 Pathogen 插件管理
execute pathogen#infect()
