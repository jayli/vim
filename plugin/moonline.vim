" 一个简单的 VIM 状态条
"
" URL:      https://raw.githubusercontent.com/jayli/vim/master/plugin/moonline.vim
" Author:   Jayli 拔赤
" License:  MIT (https://opensource.org/licenses/MIT)
" Modified: Modified by jayli (http://github.com/jayli)
" Ref:      https://github.com/jayli/vim

if exists("g:loaded_moon_statusline")
    finish
endif
let g:loaded_moon_statusline = 1

" 默认不显示Git分支
let g:moonWithGitBranchCharacter = get(g:, "moonWithGitBranchCharacter", 0)

" 颜色配置
let g:moonHonorUserDefinedColors = get(g:, "moonHonorUserDefinedColors", 0)

let s:modes = {
    \  "n":       ["%1*", " normal "],
    \  "i":       ["%2*", " insert "],
    \  "R":       ["%4*", " r-mode "],
    \  "v":       ["%3*", " visual "],
    \  "V":       ["%3*", " v-line "],
    \  "\<C-v>":  ["%3*", " v-rect "],
    \  "c":       ["%1*", " c-mode "],
    \  "s":       ["%3*", " select "],
    \  "S":       ["%3*", " s-line "],
    \  "\<C-s>":  ["%3*", " s-rect "],
    \  "t":       ["%2*", " terminal "],
    \}

" 默认主题颜色
let s:white   = 148
let s:green   = 148
let s:grey236 = 236
let s:grey234 = 234
let s:emerald = 184
let s:blue    = 25
let s:purple  = 99
let s:crimson = 211

let g:moon_statusline_scheme = "default"
let s:statusline_scheme_dict = {
        \   "default" : {
        \       "white":   s:white,
        \       "green":   s:green,
        \       "grey":    s:grey236,
        \       "emerald": s:emerald,
        \       "blue":    s:blue,
        \       "purple":  s:purple,
        \       "crimson": s:crimson
        \   }
        \ }

function! s:GetColorSet(scheme)
    if empty(g:moon_statusline_scheme)
        let g:moon_statusline_scheme = "default"
    endif
    return get(s:statusline_scheme_dict,a:scheme)
endfunction

function! EasyModeColor(mode)
    return get(s:modes, a:mode, "%*1")[0]
endfunction

function! EasyModeText(mode)
    return get(s:modes, a:mode, " normal ")[1]
endfunction

function! MoonStatusLine()
    let l:statusline = ""
    let l:mode = mode()

    let l:statusline = EasyModeColor(l:mode)
    let l:statusline .= EasyModeText(l:mode)
    let l:statusline .= "%* "
    let l:statusline .= "[%n] %F %h%m%r%= %k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]"
    let l:statusline .= "[%{&ff}][ASCII=\%03.3b]"
    let l:statusline .= "\ %-10.(%l,%c%V%)\ %P"

    return l:statusline
endfunction

function! s:StatusLine(mode)
    if &buftype == "nofile" || bufname("%") == "[BufExplorer]"
        " 不设置自定义状态栏
        return
    elseif a:mode == "not-current"
        " 激活窗口的状态栏
        setlocal statusline=\ %*%F\ %h%m%r
        setlocal statusline+=%*%=%-14.(%l,%c%V%)[%L]\ %P
        return
    else
        " 激活窗口的状态栏
        setlocal statusline=%!MoonStatusLine()
    endif
endfunction

function! s:UserColors()
    if g:moonHonorUserDefinedColors
        return
    endif

    exec "hi User1 ctermbg=".s:blue   ." ctermfg=white guibg=#0066CC guifg=#ffffff"
    exec "hi User2 ctermbg=".s:green  ." ctermfg=".s:grey234 . " guibg=#00FF00 guifg=#474747"
    exec "hi User3 ctermbg=".s:crimson." ctermfg=black". " guibg=#b55673 guifg=#ffffff"
    exec "hi User4 ctermbg=".s:purple ." ctermfg=".s:grey234 . " guibg=#d08770 guifg=#474747"
    exec "hi User5 ctermbg=".s:grey236." ctermfg=10 "
    exec "hi User6 ctermbg=".s:grey236." ctermfg=251"
    exec "hi User7 ctermbg=".s:grey236." ctermfg=4"
endfunction

augroup moonStatusline
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter   * call s:StatusLine("normal")
    autocmd WinLeave,FilterWritePost        * call s:StatusLine("not-current")
    if exists("##CmdlineEnter")
        autocmd CmdlineEnter                * call s:StatusLine("command") | redraw
    endif
    autocmd SourcePre                       * call s:UserColors()
augroup END

call s:UserColors()

"状态栏样式hack，针对evening,包括gui模式下的状态栏样式
hi StatusLine cterm=none ctermbg=236 ctermfg=white guibg=#373737 guifg=#cbe3e7
hi StatusLineNC cterm=none ctermbg=235 ctermfg=247 guibg=#333333 guifg=#a1a1a1

