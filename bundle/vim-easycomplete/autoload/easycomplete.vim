
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
	
	" why not work
	"let s:filename = getbufinfo('$')[0].name
	"execute "echo ' >>>>>>>>>>>....". s:filename ."'"
	"execute "echo '<" . string(keywords.join(","))."> | sdfsdf'"
	""}}}
	let &completefunc = 'easycomplete#CompleteFunc' "C-X C-U X-N 触发
	"let &omnifunc = 'easycomplete#CompleteFunc' " C-X C-U X-O 触发
	" 重新定义 Tab 键
	" autocmd TextChangedI * call s:EasyComplete()
	"inoremap <Tab> <C-R>=EasyTabComplete()<CR>
endfunction

function! s:GetSnippetSimplified(snippet_str)
	let pfx_len = match(a:snippet_str,"${[0-9]:")
	if !empty(a:snippet_str) && pfx_len < 0
		return a:snippet_str
	endif

	let l:o_str = deepcopy(a:snippet_str)
	let l:result = ""
	let m_pos = 0

	if pfx_len == 0
		let l:result = l:o_str[4:]
	else
		"result = execute('o_str[0:'.pfx_len.' - 1] . o_str['.pfx_len.' + 4:len(o_str)]')
		let l:result = l:o_str[0:pfx_len - 1] . l:o_str[pfx_len + 4:]
		"l:result = "iii"
	endif

	let m_pos = stridx(l:result,"}")
	let l:result = l:result[:m_pos - 1] . l:result[m_pos + 1:]
	let l:result = s:GetSnippetSimplified(l:result)

	return l:result
endfunction

function! s:SendKeys( keys )
	call feedkeys( a:keys, 'in' )
endfunction

" keywords is List
" snippets is Dict
function! s:MixinBufKeywordAndSnippets(keywords,snippets)
	if empty(a:snippets)
		return a:keywords
	endif
	let snipabbr_list = []
	for [k,v] in items(a:snippets)
		let snip_body = s:trim(s:GetSnipBody(v))
		call add(snipabbr_list, {"word": k , "menu": snip_body})
	endfor
	call extend(snipabbr_list , a:keywords)
	return snipabbr_list
endfunction

function! s:GetSnipBody(snipobj)
	let errmsg = "[unknown snippet]"
	if empty(a:snipobj)
		return errmsg 
	else 
		let v = values(a:snipobj)
		if !empty(v[0])
			return v[0][0]
		else
			return errmsg 
		endif
	endif
endfunction

function! s:trim(localstr)
	let default_length = 33

	" TODO 将 snip 中的占位符替换掉
	if !empty(a:localstr) && len(a:localstr) > default_length 
		let trim_str = a:localstr[:default_length] . ".."
	else
		let trim_str = a:localstr
	endif
	return '[jQuery] ' . s:GetSnippetSimplified(split(trim_str,"[\n]")[0])
endfunction

" get snippets
function! g:GetSnippets(scopes, trigger)
	if exists("g:snipMate")
		return snipMate#GetSnippets(a:scopes, a:trigger)
	endif
	return {}
endfunction

function! s:GetKeywords()
	return s:ArrayDistinct(extend(s:GetBufKeywords(),s:GetDictKeywords()))
endfunction

function! s:GetBufKeywords()
	let s:tmpkeywords = []
	for buf in getbufinfo()
		let lines = getbufline(buf.bufnr, 1 ,"$")
		for line in lines
			call extend(s:tmpkeywords, split(line,'[^A-Za-z0-9_#]'))
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
				call extend(s:dictkeywords, split(line,'[^A-Za-z0-9_#]'))
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
	let keywords_result = uniq(filter(s:GetKeywords(),'matchstrpos(v:val, "'.a:base.'")[1] == 0'))
	let snippets_result = g:GetSnippets(deepcopy([&filetype]),a:base)
	"execute "echo '". string(snippets_result) ."'"

	return s:MixinBufKeywordAndSnippets(keywords_result, snippets_result)
	"return s:completion.candidates
endfunction

