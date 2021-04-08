" ~/.vimrc by Jayli <lijing00333@163.com>
" MoreInfo: https://github.com/jayli/vim
" for 拔赤<bachi@taobao.com>, 欢迎拷贝
" http://jayli.github.com

"""""""""""""""""""""""""""""""""""""""""""
"
"       VIM 和 NVIM 基础配置
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
" 识别markdown文件
autocmd BufRead,BufNewFile *.mkd,*.markdown,*.mdwn,*.md set filetype=markdown
" Go 语言配置：执行`:GoBuild`时先在Buf内检查代码错误
autocmd BufRead,BufNewFile *.go set autowrite
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/ignored_files/*
" CtrlP 的工作模式
let g:ctrlp_working_path_mode = 'rw'
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules)$'
"默认长度的空格
set backspace=indent,eol,start
" 读写.viminfo文件，不要额外存储
set viminfo='20,\"50
set formatoptions=mtcql
"鼠标隐藏,鼠标右键无作用
set mouse=v

" 打开文件时，自动定位到上次光标位置
if has ("autocmd")
  autocmd BufReadPost *
        \ if line("'\"") > 0 && line ("'\"") <= line("$") |
        \    exe "normal g'\"" |
        \ endif
endif

"高亮搜索结果
set incsearch
set hlsearch
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
" 支持modeline
set modeline
set modelines=1
"文件编码设定
set fileencodings=ucs-bom,utf-8,GB18030,gbk,big5
"tab 尺寸定义
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
"显示Tab缩进标识
"s list
"set listchars=tab:>-
"空格提示
highlight WhitespaceEOL ctermbg=238 guibg=#444444
match WhitespaceEOL /\s\+$/

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
"       防止 VIM 运行太卡
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
"       H（大写的H）调用常见命令
"
"""""""""""""""""""""""""""""""""""""""""""

command! -nargs=0 -complete=command H call execute(":h jayli")

"""""""""""""""""""""""""""""""""""""""""""
"
"       VIM 按键映射定义
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

" tab操作多文件
nmap tn :tabnew
" NERDTree 配置
nmap wm :NERDTreeRefreshRoot<CR>:NERDTreeToggle<CR>
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


" ---------- coc.nvim --------------
" ---------- coc.nvim --------------

" Jedi 配置
let g:jedi#auto_initialization = 1
let g:jedi#popup_on_dot = 1
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "1"
" autocmd FileType python,go setlocal completeopt-=preview

" 打开 ctags
nmap mm :TagbarToggle<CR>

" 批量注释：// 批量 Toggle 为注释
xmap // <Plug>Commentary
" CtrlP 设置
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"""""""""""""""""""""""""""""""""""""""""""
"
"       VIM 各种编程插件所需的配置
"
"""""""""""""""""""""""""""""""""""""""""""

" Go 编程配置：默认配置：vim-go 所需
let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_version_warning = 0
" Go 结构体名字高亮
let g:go_highlight_types = 1
" Go 结构体成员高亮
let g:go_highlight_fields = 1
" Go 函数名高亮
let g:go_highlight_function_calls = 1
" JavaScript 编程配置，vim-javascript 所需
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

"""""""""""""""""""""""""""""""""""""""""""
"
"       Pathogen 插件启动
"
"""""""""""""""""""""""""""""""""""""""""""
" let g:UltiSnipsExpandTrigger = ""

" 开启 Pathogen 插件管理
" execute pathogen#infect()
call plug#begin('~/.vim/bundle')
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/vim-easy-align'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-commentary'
Plug 'jayli/vim-brainfuck'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'

"---easycomplete---
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jayli/vim-easycomplete'



" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'

call plug#end()

"语法高亮
syntax enable
syntax on

"最后显示顶部Tabline 和底部 statusline
"树莓派
if system("uname -a") =~ "raspberry"
  set nocursorline
  autocmd BufRead * redraw
  " redraw
else
  set cursorline
endif

function! s:StatusLine(...)
  set showtabline=2
  set laststatus=2
endfunction

call timer_start(10, function("s:StatusLine"))


" echom lsp_settings#get('vim-language-server', 'cmd', [lsp_settings#exec_path('vim-language-server'), '--stdio'])

" if executable('pyls')
"     " pip install python-language-server
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'pyls',
"         \ 'cmd': {server_info->['pyls']},
"         \ 'allowlist': ['python'],
"         \ })
" endif

" function! s:on_lsp_buffer_enabled() abort
"     setlocal omnifunc=lsp#complete
"     setlocal signcolumn=yes
"     if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"     nmap <buffer> gd <plug>(lsp-definition)
"     nmap <buffer> gs <plug>(lsp-document-symbol-search)
"     nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
"     nmap <buffer> gr <plug>(lsp-references)
"     nmap <buffer> gi <plug>(lsp-implementation)
"     nmap <buffer> gt <plug>(lsp-type-definition)
"     nmap <buffer> <leader>rn <plug>(lsp-rename)
"     nmap <buffer> [g <plug>(lsp-previous-diagnostic)
"     nmap <buffer> ]g <plug>(lsp-next-diagnostic)
"     nmap <buffer> K <plug>(lsp-hover)
"     inoremap <buffer> <expr><c-f> lsp#scroll(+4)
"     inoremap <buffer> <expr><c-d> lsp#scroll(-4)

"     let g:lsp_format_sync_timeout = 1000
"     autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

"     " refer to doc to add more commands
" endfunction

" augroup lsp_install
"     au!
"     " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"     autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
" augroup END
" -------------------------------------------------
" vim:ts=2:sw=2:sts=2
