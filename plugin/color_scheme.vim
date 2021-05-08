" 这里优先支持 MacOS Terminal
"
" iTerm2 的最大优势是支持真彩色，缺点是存在性能问题
"
" - #27 的闪烁问题无解（coc 也存在此问题）
" - 打开文件速度不及 Terminal
"
" 因此这里主要支持 256 色配色主题
set t_Co=256

"""""""""""" 主题样式配置
" let g:vim_color_scheme = "simple-dark"
" let g:vim_color_scheme = "lucius"
let g:vim_color_scheme = "jellybeans"
let g:nvim_color_scheme = "lucius"

augroup FileTypeChecking
  let ext = substitute(expand('%p'),"^.\\+[\\.]","","g")
  if ext == "vim"
    let g:vim_color_scheme = 'spring-night'
  endif
augroup END

if has("termguicolors")
  " set termguicolors
endif

" set termguicolors

" ------------------------------------------------------{{{

if has("nvim")
  exec "colorscheme ". g:nvim_color_scheme
elseif system("uname -a") =~ "raspberry"
  colorscheme eldar
else
  exec "colorscheme ". g:vim_color_scheme
endif

" 基本样式 hack
hi CursorLineNR ctermfg=248 ctermbg=233
hi SignColumn   ctermfg=233 ctermbg=235
hi LineNR       ctermbg=233 ctermfg=237
hi Normal       ctermbg=233
hi Todo         ctermfg=231 ctermbg=233 cterm=bold
hi Identifier   cterm=none
hi TabLine      ctermfg=244 ctermbg=236             cterm=none
hi TabLineFill  ctermfg=187 ctermbg=236             cterm=none
hi TabLineSel   ctermbg=25 ctermfg=white guibg=blue guifg=white
hi Visual       cterm=NONE ctermbg=17

" ------------------------------------------------------}}}

" 本地全局样式 Hack {{{
" 获得某个样式的 BackgroundColor
function! s:GetColor(name, flag)
  if &t_Co > 255 && !has('gui_running')
    let hlString = s:Highlight_Args(a:name)
    let bgColor = matchstr(hlString,"\\(\\s".a:flag."=\\)\\@<=\\d\\{\-}\\(\\s\\)\\@=")
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
if exists("g:colors_name")
  " Tab 栏背景样式始终和 Normal 背景色一致
  exec "hi TabLineFill cterm=none ctermfg=".string(s:GetColor('Normal', 'ctermbg')).
        \ " ctermbg=".string(s:GetColor('Normal','ctermbg'))
  " 折叠样式始终和 Normal 背景色一致
  exec "hi Folded ctermbg=". string(s:GetColor('Normal', 'ctermbg')) ." ctermfg=".
        \ string(s:GetColor('Comment', 'ctermfg'))
  " 固定行高亮样式
  exec "hi CursorLine ctermbg=234 cterm=none"
  if s:GetColor('Normal', 'ctermbg') == s:GetColor('CursorLine', 'ctermbg')
    exec "hi CursorLine ctermbg=" . string(s:GetColor('CursorLine', 'ctermbg') + 1)
  endif
  if s:GetColor('CursorLine', 'ctermbg') == s:GetColor('StatusLine', 'ctermbg')
    exec "hi StatusLine cterm=none guibg=#b4addf ctermbg=" . string(s:GetColor('CursorLine', 'ctermbg') + 1)
  endif
  " 行号和正文样式相等
  if s:GetColor('LineNr', 'ctermbg') != s:GetColor('Normal', 'ctermbg')
    exec "hi LineNr ctermbg=" . string(s:GetColor('Normal', 'ctermbg'))
  endif
endif

" }}}

