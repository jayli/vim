set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "dtinth"

" todo: refactor this into a plugin on its own
let s:xtermcolors = ['00', '5f', '87', 'af', 'e0', 'ff']

function! s:GenerateRGB(color)
  if a:color < 16
    return ['000000', 'CE160F', '00C239', 'C6C33C', '132ABF', 'CF31C0', '00C5C6', 'C7C7C7',
          \ '686768', 'FF6C6A', '44F97B', 'FDFA7D', '6B73F7', 'FF77F7', '49FDFE', 'ffffff'][a:color]
  elseif a:color < 232
    let id = a:color - 16
    let blue = id % 6
    let green = (id / 6) % 6
    let red = (id / 36) % 6
    return s:xtermcolors[red] . s:xtermcolors[green] . s:xtermcolors[blue]
  else
    let scale = (a:color + 1 - 232) * 255 / 25
    return printf('%02x%02x%02x', scale, scale, scale)
  endif
endfunction

function! s:GenerateColor(color)
  " color is in form of 000-555, s00-s15, g00-g23
  if a:color[0] == 's'
    let s:cterm = strpart(a:color, 1) + 0
  elseif a:color[0] == 'g'
    let s:cterm = strpart(a:color, 1) + 232
  else
    let s:cterm = 16 + (a:color[0] * 36) + (a:color[1] * 6) + a:color[2]
  end
  let s:rgb = '#' . s:GenerateRGB(s:cterm)
endfunction

function! Xhi(name, ...)
  let definition = []
  let attrlist = []
  let mode = 'fg'
  for cmd in a:000
    if cmd == 'bold'
      call add(attrlist, 'bold')
    elseif cmd == 'underline'
      call add(attrlist, 'underline')
    elseif cmd == 'undercurl'
      call add(attrlist, 'undercurl')
    elseif cmd == 'italic'
      call add(attrlist, 'italic')
    else
      if cmd != '-'
        call s:GenerateColor(cmd)
        call add(definition, 'gui' . mode . '=' . s:rgb)
        call add(definition, 'cterm' . mode . '=' . s:cterm)
      endif
      let mode='bg'
    endif
  endfor
  if len(attrlist) == 0
    let attrlist = ['NONE']
  endif
  call add(definition, 'cterm=' . join(attrlist, ','))
  call add(definition, 'gui=' . join(attrlist, ','))
  return 'hi ' . a:name . ' ' . join(definition, ' ')
endfunction

command! -nargs=* Xhi exe Xhi(<f-args>)
hi Normal guibg=#151413 guifg=#d9d8d7

" highlight menu colors
hi Pmenu ctermfg=White ctermbg=DarkBlue
hi PmenuSel ctermfg=Red ctermbg=White

" line number colors
Xhi LineNr g6 000

" status line, splitters
Xhi StatusLineNC 333 111
Xhi StatusLine s15 024 bold
Xhi VertSplit 235 024

Xhi NonText 314
" Xhi Search 555 111 underline
Xhi Search 555 g03 underline

" syntax stuff
Xhi Comment 242
Xhi Constant 522
Xhi Identifier 245 bold
Xhi Statement 442
Xhi PreProc 423
Xhi Type 342

Xhi Special 234 bold
Xhi ColorColumn 500 g2
Xhi Conceal g12 000

" vim-pandoc-syntax
Xhi pandocNoFormatted 342

" ctrl-p
Xhi CtrlPMatch 251
Xhi CtrlPStats 555 024
Xhi CtrlPMode1 553 024
Xhi CtrlPMode2 345 024

" easymotion
Xhi EasyMotionShade g6
Xhi EasyMotionTarget 352

" sign column and git gutter
Xhi SignColumn g6 000

" indent guides
let g:indent_guides_auto_colors = 0
Xhi IndentGuidesOdd - 000
Xhi IndentGuidesEven - g3

