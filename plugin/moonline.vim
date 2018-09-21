" A simple Vim/Neovim statusline using moon colors.
"
" URL:			forked from github.com/bluz71/vim-moon-statusline
" License:		MIT (https://opensource.org/licenses/MIT)
" Modified:		Modified by jayli (http://github.com/jayli)
" Ref:			https://github.com/jayli/moonline.vim	

if exists("g:loaded_moon_statusline")
	finish
endif
let g:loaded_moon_statusline = 1

" By default don't display Git branches using the U+E0A0 branch character.
let g:moonWithGitBranchCharacter = get(g:, "moonWithGitBranchCharacter", 0)

" By default always use moon colors and ignore any user-defined colors.
let g:moonHonorUserDefinedColors = get(g:, "moonHonorUserDefinedColors", 0)

let s:modes = {
	\  "n":			 ["%1*", " normal "],
	\  "i":			 ["%2*", " insert "],
	\  "R":			 ["%4*", " r-mode "],
	\  "v":			 ["%3*", " visual "],
	\  "V":			 ["%3*", " v-line "],
	\  "\<C-v>":	 ["%3*", " v-rect "],
	\  "c":			 ["%1*", " c-mode "],
	\  "s":			 ["%3*", " select "],
	\  "S":			 ["%3*", " s-line "],
	\  "\<C-s>":	 ["%3*", " s-rect "],
	\  "t":			 ["%2*", " term "],
	\}

" 默认主题颜色
let s:white   = 251
let s:grey236 = 236
let s:grey234 = 234
let s:emerald = 184
let s:blue    = 27
let s:purple  = 99
let s:crimson = 211

let g:moon_statusline_scheme = "default"
let s:statusline_scheme_dict = {
			\	"default" : {
			\		"white"		: s:white,
			\		"grey"		: s:grey236,
			\		"emerald"	: s:emerald,
			\		"blue"		: s:blue,
			\		"purple"	: s:purple,
			\		"crimson"	: s:crimson
			\	}
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
		" Don't set a custom status line for file explorers.
		return
	elseif a:mode == "not-current"
		" Status line for inactive windows.
		setlocal statusline=\ %*%F\ %h%m%r
		setlocal statusline+=%*%=%-14.(%l,%c%V%)[%L]\ %P
		return
	else
		" Status line for the active window.
		setlocal statusline=%!MoonStatusLine()
	endif
endfunction

function! s:UserColors()
	if g:moonHonorUserDefinedColors
		return
	endif

	exec "highlight User1 ctermbg=25	guibg=" . s:blue .  " ctermfg=white  guifg=" . s:grey234
	exec "highlight User2 ctermbg=148	guibg=" . s:white.  " ctermfg=234 guifg=" . s:grey234
	exec "highlight User3 ctermbg=211	guibg=" . s:crimson." ctermfg=black guifg=" . s:grey234
	exec "highlight User4 ctermbg=99	guibg=" . s:purple. " ctermfg=234 guifg=" . s:grey234
	exec "highlight User5 ctermbg=236	guibg=" . s:grey236." ctermfg=10  guifg=" . s:emerald . " gui=none"
	exec "highlight User6 ctermbg=236	guibg=" . s:grey236." ctermfg=251 guifg=" . s:white . " gui=none"
	exec "highlight User7 ctermbg=236	guibg=" . s:grey236." ctermfg=4	  guifg=" . s:blue . " gui=none"
endfunction

augroup moonStatusline
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter	* call s:StatusLine("normal")
	autocmd WinLeave,FilterWritePost		* call s:StatusLine("not-current")
	if exists("##CmdlineEnter")
		autocmd CmdlineEnter				* call s:StatusLine("command") | redraw
	endif
	autocmd SourcePre						* call s:UserColors()
augroup END

call s:UserColors()

"状态栏样式hack，针对evening,包括gui模式下的状态栏样式
hi StatusLine  cterm=bold ctermbg=236 ctermfg=white guifg=darkblue guibg=white
hi StatusLineNC	ctermbg=gray ctermfg=236 guifg=darkblue guibg=white
hi TabLineFill cterm=bold ctermbg=235 ctermfg=black guibg=black guifg=black
hi TabLineSel cterm=bold ctermbg=25  ctermfg=white guibg=blue guifg=white
hi TabLine ctermbg=249 ctermfg=232
hi Visual cterm=NONE ctermbg=17

