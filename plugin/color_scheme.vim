set t_Co=256

"""""""""""" 主题样式配置
let g:vim_color_scheme = "spring-night"
let g:nvim_color_scheme = "open-color"

" ------------------------------------------------------{{{

if has("nvim")
  exec "colorscheme ". g:nvim_color_scheme
elseif system("uname -a") =~ "raspberry"
  colorscheme eldar
else
  exec "colorscheme ". g:vim_color_scheme
endif

hi CursorLineNR ctermfg=248 ctermbg=233
hi SignColumn   ctermfg=233 ctermbg=235
hi LineNR       ctermbg=233 ctermfg=237
hi Normal       ctermbg=233
hi Todo         ctermfg=231 ctermbg=233 cterm=bold
hi Identifier   cterm=none

" ------------------------------------------------------}}}

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
      \       'spring-night','open-color',
      \       'eldar'
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
