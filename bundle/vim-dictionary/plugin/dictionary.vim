" == "acomment" == {{{
"
"	File:		dictionary.vim
"	Author:		Jayli
"	Modifier:	Jayli
"	Modified:	2018-09-28
"
" --}}}
"

function! AutoLoadDict()
	for buf in getbufinfo()
		let filetype = getbufvar(buf.bufnr,'&filetype')
		for path in split(globpath(&rtp, 
					\ '**/vim-dictionary/dict/'. filetype . '.*'),"\n")
			if len(path) != 0 && strridx(&dictionary, path) < 0
				silent execute 'setlocal dictionary+='.fnameescape(path)
			endif
		endfor
	endfor
endfunction

autocmd FileType * call AutoLoadDict()
