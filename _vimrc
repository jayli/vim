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
" 识别go文件
au BufRead,BufNewFile *.go   set filetype=go

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

"显示行号
set nu

"状态栏
set laststatus=2
"状态栏样式定义在~/.vim/plug/statusline.vim

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
map <F8> :JSHint<CR>

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

"一个tab占4个空格
set ts=4
set sw=4

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

"tab自动补全
function! CleverTab()
	let g:typing_path = easycomplete#TypingAPath()
	if pumvisible()
		return "\<C-N>"
	elseif g:typing_path.isPath " 如果匹配一个path
		"return "\<C-X>\<C-F>"
		return "\<C-X>\<C-U>"
	elseif strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	elseif strpart( getline('.'), col('.')-2, col('.')-1 ) =~ '\s'  
		return "\<Tab>"
	elseif exists("g:snipMate") && exists('b:snip_state') 
		" 代码已经完成展开时，编辑代码占位符，用tab进行占位符之间的跳转
		let jump = b:snip_state.jump_stop(0)
		if type(jump) == 1 " 返回字符串
			" 等同于 return "\<C-R>=snipMate#TriggerSnippet()\<CR>"
			return jump
		endif
	elseif exists("g:snipMate")
		let word = matchstr(getline('.'), '\S\+\%'.col('.').'c')
		let list = snipMate#GetSnippetsForWordBelowCursor(word, 1)

		if snipMate#CanBeTriggered() && !empty(list) && len(list) == 1
			call feedkeys( "\<Plug>snipMateNextOrTrigger" )
			return ""
		else
			"唤醒easycomplete菜单
			return "\<C-X>\<C-U>"
		endif
	else
		"唤醒easycomplete菜单
		return "\<C-X>\<C-U>"
	endif
endfunction

function! CleverShiftTab()
	return pumvisible()?"\<C-P>":"\<Tab>"
endfunction

inoremap <Tab> <C-R>=CleverTab()<CR>
inoremap <S-Tab> <C-R>=CleverShiftTab()<CR>
inoremap <C-F> <C-X><C-F><C-P> 
inoremap <C-O> <C-X><C-O><C-P>
" 回车选中
inoremap <expr> <CR> pumvisible()?"\<C-Y>":"\<CR>"

" Ctrl-K 代码片段补全（代替zencoding）
" 不可删掉，C-K 还是必要的，在完全键入一个缩写单词，没有匹配窗口，直接点击回车
" 不好使，必须使用C-K展开
imap <C-K> <Plug>snipMateNextOrTrigger
smap <C-K> <Plug>snipMateNextOrTrigger

let g:snipMate = {}
let g:snipMate.description_in_completion=1

"css 文件输入:匹配关键字
autocmd Filetype css inoremap <buffer>  :  :<C-X><C-O><C-P>
"javascript 文件输入.匹配关键字
"autocmd Filetype javascript inoremap <buffer>  .  .<C-X><C-O><C-P>

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
set dictionary-=$HOME/.vim/dict/common.dict dictionary+=$HOME/.vim/dict/common.dict
set complete-=k complete +=k

au FileType javascript set dictionary+=$HOME/.vim/dict/node.dict

" zen coding 配置
"let g:user_zen_expandabbr_key = '<C-k>' "设置为ctrl+k,展开

"set completeopt=longest,menu

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
augroup javascript_folding
	au!
	au FileType javascript,vim setlocal foldmethod=marker
augroup END

" 开启 Pathogen 插件管理
execute pathogen#infect()

" popup菜单样式
"highlight Pmenu guibg=#EE0000 ctermbg=19
"highlight PmenuSel guibg=#660000 ctermbg=gray guifg=yellow ctermfg=black
"highlight PmenuSbar guibg=#990000 ctermbg=blue
"highlight PmenuThumb guifg=yellow ctermfg=darkred
		
	
set cursorline

"highlight LeaderTab guifg=#666666 ctermbg=16
"match LeaderTab /^\t\+$/


function g:Foo()
	redi => result
	silent! execute('!ls')
	redi END
	return result
endfunction
