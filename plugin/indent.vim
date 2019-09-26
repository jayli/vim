command! -nargs=? -range=% IndentSpacesToTabs call <SID>ConvertIndentation(<line1>, <line2>, 0, <q-args>)
command! -nargs=? -range=% IndentTabsToSpaces call <SID>ConvertIndentation(<line1>, <line2>, 1, <q-args>)
command! -nargs=? -range=% IndentCleanup call <SID>ConvertIndentation(<line1>, <line2>, &expandtab, <q-args>)

function! s:ConvertWhitespace(input, expandtab, tabstop)
	let space_indent = repeat(' ', a:tabstop)
	let result = substitute(a:input, space_indent, '\t', 'g')
	let result = substitute(result, ' \+\ze\t', '', 'g')
	if a:expandtab == 1
		let result = substitute(result, '\t', space_indent, 'g')
	endif
	return result
endfunction

function! s:ConvertIndentation(line1, line2, expandtab, tabstop)
	let cursor_position = getpos('.')
	let tabstop = empty(a:tabstop) ? &tabstop : a:tabstop
	execute a:line1 . ',' . a:line2 . 's/\v^(\s)(\1+)?/\=s:ConvertWhitespace(submatch(0), a:expandtab, tabstop)/e'
	call histdel('search', -1)
	call setpos('.', cursor_position)
	if (a:line1 == 1) && (a:line2 == line('$'))
		let &l:expandtab = a:expandtab
		let &l:tabstop = tabstop
	endif
endfunction
