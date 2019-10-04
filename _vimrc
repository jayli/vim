" ~/.vimrc by Jayli <lijing00333@163.com> 
" MoreInfo: https://github.com/jayli/vim
" for 拔赤, 欢迎拷贝
" http://jayli.github.com

"""""""""""""""""""""""""""""""""""""""""""
"
"   VIM 基础配置
"
"""""""""""""""""""""""""""""""""""""""""""

" 使用vim默认配置，推荐这样做
set nocompatible 
" 为了避免加载 Plugin 过程中的抖动，高亮行号先关掉，语法高亮先关掉，最后再打开
set nocursorline
syntax off
" 识别文件类型
filetype plugin indent on 
" 将less,scss识别为css
autocmd BufRead,BufNewFile *.less,*.scss set filetype=css
" 将xtpl,vue识别为html
autocmd BufRead,BufNewFile *.xtpl,*.we,*.vue set filetype=html
" 将 swift 识别为 js
autocmd BufRead,BufNewFile *.swift,*.coffee set filetype=javascript
" 识别markdown文件
autocmd BufRead,BufNewFile *.mkd,*.markdown,*.mdwn,*.md   set filetype=markdown
" Go 语言配置：执行`:GoBuild`时先在Buf内检查代码错误
autocmd BufRead,BufNewFile *.go set autowrite
" Go 语言配置 Tagbar
autocmd FileType go 
    \ if executable("ctags") && globpath(&rtp, 'plugin/tagbar.vim') != "" |
    \   call tagbar#OpenWindow() |
    \ endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/ignored_files/*
" CtrlP 的工作模式
let g:ctrlp_working_path_mode = 'rw'
" js文件格式化，Ctrl-b
autocmd FileType javascript nnoremap <C-b> :call g:Jsbeautify()<CR>
"css 文件输入:匹配关键字
autocmd Filetype css inoremap <buffer> : :<C-X><C-O><C-P>
"默认长度的空格
set backspace=indent,eol,start
" 读写.viminfo文件，不要额外存储
set viminfo='20,\"50 
set formatoptions=mtcql
"鼠标隐藏,鼠标右键无作用
set mouse=v
" 先关掉tabline和statusline，最后初始化完成后打开
set showtabline=1
set laststatus=1

" 打开文件时，自动定位到上次光标位置
if has ( "autocmd" )
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \       exe "normal g'\"" |
    \ endif
endif  " has ("autocmd") 

"高亮搜索结果
set incsearch
set hlsearch
"高亮当前行和行号
set cursorline
"显示行号
set nu
"欢迎文字 autocmd VimEnter * echo "Welcome back jayli :)"
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
"tab 尺寸定义
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
"显示Tab缩进标识
set list
set listchars=tab:>-
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
"   防止 VIM 运行太卡
"
"""""""""""""""""""""""""""""""""""""""""""

au Filetype go,javascript,python,vim,shell,ruby,c,css,html setlocal synmaxcol=300
let g:matchparen_timeout = 20
let g:matchparen_insert_timeout = 20
set nocursorcolumn
set norelativenumber
set lazyredraw

"""""""""""""""""""""""""""""""""""""""""""
"
"   H（大写的H）调用常见命令
"   
"""""""""""""""""""""""""""""""""""""""""""

command! -nargs=0 -complete=command H call execute(":h jayli")

"""""""""""""""""""""""""""""""""""""""""""
"
"   VIM 按键映射定义
"
"""""""""""""""""""""""""""""""""""""""""""
" Ctrl-B JS beautify
" Ctrl-M 格式化
" Ctrl-] 跳入
" Ctrl-T 跳回
" Ctrl-] 跳回
" tn 打开新的tabnew
" mm 打开右侧函数列表
" wm 打开文件目录树

" JSHint
nmap <F8> :JSHint<CR>
" tab操作多文件
nmap tn :tabnew 
" NERDTree 配置
nmap wm :NERDTreeRefreshRoot<CR>:NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
nmap <Tab> :tabnext<CR> 
nmap <S-Tab> :tabprevious<CR>
" Ctrl-[ 跳回
"nmap <C-[> <C-t>
"使用 Ctrl+C 或者 Y 复制到系统剪贴板
vnoremap <C-C> "+y
vnoremap Y "+y
"快速左右移动光标
nnoremap <C-l> 4l
nnoremap <C-h> 4h
" 选择模式中触发对齐动作
xmap al <Plug>(EasyAlign)
"配置缩进整理快捷键
nnoremap md :IndentModify<CR>

" Tab 键的配置，基本上都交给 vim-easycomplete 来搞定了
imap <Tab> <Plug>EasyCompTabTrigger
imap <S-Tab> <Plug>EasyCompShiftTabTrigger

" Jedi 配置
let g:jedi#auto_initialization = 1
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "1"
autocmd FileType python setlocal completeopt-=preview

" 打开 ctags
nmap mm :TagbarToggle<CR>

" 对于自动补全和代码生成如果 Tab 不好使，必须使用 C-K 展开
imap <silent> <C-K> <Plug>snipMateNextOrTrigger
smap <silent> <C-K> <Plug>snipMateNextOrTrigger

" 批量注释：// 批量 Toggle 为注释
xmap // <Plug>Commentary
" CtrlP 设置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"""""""""""""""""""""""""""""""""""""""""""
"
"   VIM 各种编程插件所需的配置
"
"""""""""""""""""""""""""""""""""""""""""""

" Go 编程配置：默认配置：vim-go 所需
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
" JavaScript 编程配置，vim-javascript 所需
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" 快捷浮窗样式定义，for vim-easycomplete
"   dark,light,rider
let g:pmenu_scheme = 'rider'

"""""""""""""""""""""""""""""""""""""""""""
"
"   EasyDebugger 插件快捷键配置 for Debug，插件 vim-easydebugger 所需
"
"""""""""""""""""""""""""""""""""""""""""""

" 开启 NodeJS 调试
nmap <S-R>  <Plug>EasyDebuggerInspect
nmap <S-W>  <Plug>EasyDebuggerWebInspect
" 关闭 NodeJS 调试
nmap <S-E>  <Plug>EasyDebuggerExit
" 暂停程序
nmap <F6>   <Plug>EasyDebuggerPause
tmap <F6>   <Plug>EasyDebuggerPause
" 跳出函数
nmap <F7>   <Plug>EasyDebuggerStepOut
tmap <F7>   <Plug>EasyDebuggerStepOut
" 进入函数
nmap <F8>   <Plug>EasyDebuggerStepIn
tmap <F8>   <Plug>EasyDebuggerStepIn
" 单步执行
nmap <F9>   <Plug>EasyDebuggerNext
tmap <F9>   <Plug>EasyDebuggerNext
" Continue
nmap <F10>  <Plug>EasyDebuggerContinue
tmap <F10>  <Plug>EasyDebuggerContinue
" 设置断点
nmap <F12>  <Plug>EasyDebuggerSetBreakPoint

"""""""""""""""""""""""""""""""""""""""""""
"
"   Pathogen 插件启动
"
"""""""""""""""""""""""""""""""""""""""""""

" 开启 Pathogen 插件管理
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""
"
"   VIM 主题设置，性能考虑，最后初始化皮肤
"
"""""""""""""""""""""""""""""""""""""""""""
"语法高亮
syntax enable
syntax on
" 颜色设置
set t_Co=256

"""""""""""" 主题样式配置

" 主题设置 colorscheme onedark {{{
" colorscheme onedark
" set background=dark
" let g:onedark_termcolors=16
" hi CursorLineNR ctermfg=248 ctermbg=233
" hi SignColumn   ctermfg=233 ctermbg=235
" hi LineNR       ctermbg=233 ctermfg=237
" hi Normal       ctermbg=233
" hi Todo         ctermfg=231 ctermbg=233 cterm=bold
" hi Folded       ctermfg=242 ctermbg=233
" }}}

" 主题设置 colorscheme seoul256 {{{ 
" let g:seoul256_background = 233
" colorscheme seoul256
" set background=dark
" }}}

" 主题设置 colorscheme jellybeans {{{
" colorscheme jellybeans
" hi SignColumn ctermfg=118 ctermbg=234
" hi Folded     ctermfg=243 ctermbg=233
"}}}

" 主题设置 colorscheme gruvbox {{{
" colorscheme gruvbox
" set background=dark
" hi CursorLineNR ctermfg=248 ctermbg=233
" hi SignColumn   ctermfg=233 ctermbg=235
" hi LineNR       ctermbg=233 ctermfg=237
" hi Normal       ctermbg=233
" hi Todo         ctermfg=231 ctermbg=233 cterm=bold
" hi Folded       ctermfg=242 ctermbg=233
" }}}

" 主题设置 colorscheme spring-night {{{
colorscheme spring-night
hi CursorLineNR ctermfg=248 ctermbg=233
hi SignColumn   ctermfg=233 ctermbg=235
hi LineNR       ctermbg=233 ctermfg=237
hi Todo         ctermfg=231 ctermbg=233 cterm=bold
hi Folded       ctermfg=242 ctermbg=233
" }}}

" TODO
" 主题设置 colorscheme open-color {{{
" colorscheme open-color
" set background=dark
" hi CursorLineNR ctermfg=248 ctermbg=233
" hi SignColumn ctermfg=118 ctermbg=235
" hi LineNR ctermbg=233 ctermfg=237
" hi Normal ctermbg=233
" hi Todo ctermfg=231 ctermbg=232 cterm=bold
" hi Identifier cterm=none
" }}}

" 主题设置 colorscheme molokai {{{
" let g:molokai_original = 0
" let g:rehash256 = 0
" colorscheme molokai  
"}}}
    
" 本地全局样式 Hack {{{ 
" 获得某个样式的 BackgroundColor
function! s:Get_BgColor(name)
    if &t_Co > 255 && !has('gui_running')
        let hlString = s:Highlight_Args(a:name)
        let bgColor = matchstr(hlString,"\\(\\sctermbg=\\)\\@<=\\d\\{\-}\\(\\s\\)\\@=")
        if bgColor != ''
            return str2nr(bgColor)
        endif
    endif
    return 0
endfunction

function! s:Highlight_Args(name)
    return 'hi ' . substitute(split(execute('hi ' . a:name), '\n')[0], '\<xxx\>', '', '')
endfunction

" 固定行高样式 Hack 
if exists("g:colors_name") && 
            \ index([
            \   'spring-night','open-color','gruvbox','jellybeans',
            \   'challenger_deep','monokai','seoul256','onedark'
            \ ], g:colors_name) >= 0
    " Tab 栏背景样式始终和 Normal 背景色一致
    exec "hi TabLineFill cterm=none ctermfg=".string(s:Get_BgColor('Normal'))." ctermbg=".string(s:Get_BgColor('Normal'))
    " 折叠样式始终和 Normal 背景色一致
    exec "hi Folded ctermbg=". string(s:Get_BgColor('Normal'))
    " 固定行高亮样式
    exec "hi CursorLine ctermbg=234 cterm=none"
    if s:Get_BgColor('Normal') == s:Get_BgColor('CursorLine')
        exec "hi CursorLine ctermbg=" . string(s:Get_BgColor('CursorLine') + 1)
    endif
    if s:Get_BgColor('CursorLine') == s:Get_BgColor('StatusLine')
        exec "hi StatusLine cterm=none ctermbg=" . string(s:Get_BgColor('CursorLine') + 1)
    endif
    " 行号和正文样式相等
    if s:Get_BgColor('LineNr') != s:Get_BgColor('Normal')
        exec "hi LineNr ctermbg=" . string(s:Get_BgColor('Normal'))
    endif
endif 

" }}}

"""""""""""""""""""""""""""""""""""""""""""
"
"   显示顶部 Tabbar 和底部 Statusline
"
"""""""""""""""""""""""""""""""""""""""""""

"底部&顶部状态栏配置，样式定义在~/.vim/plugin/moonline.vim
"最后显示顶部Tabline 和底部 statusline
set showtabline=2
set laststatus=2
setlocal cursorline

"----------------------TEST---------------------

" 得到文件buff

"let g:kk = system("ls ~/")

" vim:ts=4:sw=4:sts=4
