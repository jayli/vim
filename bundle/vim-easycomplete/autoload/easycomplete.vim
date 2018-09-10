
"help ins-completion
"
"
"
let s:default_completion = {
			\		'start_column': -1,
			\		'candidates': []
			\ }
let s:completion = s:default_completion

function! easycomplete#Enable()
	execute "echo 'easycomplete#Enable'"
	"let &completefunc = 'easycomplete#CompleteFunc' "C-X C-U X-N 触发
	let &omnifunc = 'easycomplete#CompleteFunc' " C-X C-U X-O 触发
	" 重新定义 Tab 键
	" autocmd TextChangedI * call s:EasyComplete()
	"inoremap <Tab> <C-R>=EasyTabComplete()<CR>
endfunction

function! s:SendKeys( keys )
	call feedkeys( a:keys, 'in' )
endfunction


function! s:EasyComplete()
	"if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
	"	call s:SendKeys( "\<Tab>" )
	return
	if s:completion.start_column > col( '.' ) || empty( s:completion.candidates )
		call s:CloseCompletionMenu()
	else
		call s:SendKeys( "\<C-X>\<C-U>\<C-P>" )
	endif
endfunction

function! s:CloseCompletionMenu()
	if pumvisible()
		call s:SendKeys( "\<C-e>" )
	endif
endfunction

"Hook Entry
function! easycomplete#CompleteFunc( findstart, base )
	if a:findstart
		return 1
	endif
	return [a:base,"apple"]
	
	return ["apple","apple2","iphone","123455","const","EasyCompleteStart"]
	"return s:completion.candidates
endfunction
