
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
	""{{{test
	"execute "echo 'easycomplete#Enable'"
	"let aa = browsedir('sss','~/Users/')
	"let aa = getbufvar(1,"&mod")
	"let aa = getline(1, 11)
	
	let g:kk = s:GetKeywords()
	
	"execute "echo '<" . string(keywords.join(","))."> | sdfsdf'"
	""}}}
	"let &completefunc = 'easycomplete#CompleteFunc' "C-X C-U X-N 触发
	let &omnifunc = 'easycomplete#CompleteFunc' " C-X C-U X-O 触发
	" 重新定义 Tab 键
	" autocmd TextChangedI * call s:EasyComplete()
	"inoremap <Tab> <C-R>=EasyTabComplete()<CR>
endfunction

function! s:SendKeys( keys )
	call feedkeys( a:keys, 'in' )
endfunction

function! s:GetKeywords()
	return s:ArrayDistinct(extend(s:GetBufKeywords(),s:GetDictKeywords()))
endfunction

function! s:GetBufKeywords()
	let s:tmpkeywords = []
	for buf in getbufinfo()
		let lines = getbufline(buf.bufnr, 1 ,"$")
		for line in lines
			call extend(s:tmpkeywords, split(line,'\W'))
		endfor
	endfor
	return s:ArrayDistinct(s:tmpkeywords)
endfunction

function! s:GetDictKeywords()
	if !empty(g:globalDictKeywords)
		return g:globalDictKeywords 
	endif
	let g:globalDictKeywords = []
	if !empty(&dictionary)
		let s:dictsFiles = split(&dictionary,",")
		let s:dictkeywords = []
		for onedict in s:dictsFiles 
			let lines = readfile(onedict)
			for line in lines
				call extend(s:dictkeywords, split(line,'\W'))
			endfor
		endfor
		return s:ArrayDistinct(s:dictkeywords)
	else 
		return []
	endif
endfunction

" jayli here,done
" 纯数字要删除掉
function! s:ArrayDistinct( list )
	if empty(a:list)
		return []
	else
		let s:tmparray = [] 
		let s:uniqlist = uniq(a:list)
		for item in s:uniqlist
			"index(s:tmparray,item) < 0 &&
			if !empty(item) && 
					\ !str2nr(item) &&
					\ len(item) != 1
				call add(s:tmparray,item)
			endif
		endfor
		return s:tmparray
	endif
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
"菜单样式
"包括：当前缓冲区keywords，字典keywords，代码片段缩写，YCM 所辖每个语言的补全
"	fun			
"	Funny
"	Function	[Dict]
"	Function	javascript function PH (a,b)
"	function	[ID]
"	./Foo		[Dir]
"	./Foo/a/b/	[File]
function! easycomplete#CompleteFunc( findstart, base )
	if a:findstart
		" locate the start of the word
		let line = getline('.')
		let start = col('.') - 1
		while start > 0 && line[start - 1] =~ '\a'
			let start -= 1
		endwhile
		return start
	endif
	let words =  [a:base,{"word":"apple","menu":"sdfdsf"},"apple2","iphone","123455","const","EasyCompleteStart"]
	return uniq(filter(s:GetKeywords(),'matchstrpos(v:val, "'.a:base.'")[1] == 0'))
	"return s:completion.candidates
endfunction
