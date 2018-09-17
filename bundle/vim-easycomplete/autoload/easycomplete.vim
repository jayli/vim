"vim: foldmethod=marker
"help ins-completion
" TODO
" - 如果一个单词刚好只有一个匹配，或者匹配不出东西，点击tab是没有反应的
" - 各种补全形态的支持，包括支持 File 匹配
" - 各种语言的词表收集
" - js include 的文件词表生成记录入buf
" - bugfix，":"隔断的单词匹配不出来
"   bugfix，就近匹配？
"   bugfix，snip词表排序
" - _vimrc 整理 & easycomplete 抽离成插件
let s:default_completion = {
			\		'start_column': -1,
			\		'candidates': []
			\ }
let s:completion = s:default_completion

function! easycomplete#Enable()
	" Without this flag in cpoptions, critical YCM mappings do not work. There's
	" no way to not have this and have YCM working, so force the flag.
	set cpoptions+=B
	" We need menuone in completeopt, otherwise when there's only one candidate
	" for completion, the menu doesn't show up.
	set completeopt-=menu
	set completeopt+=menuone
	" This is unnecessary with our features. People use this option to insert
	" the common prefix of all the matches and then add more differentiating chars
	" so that they can select a more specific match. With our features, they
	" don't need to insert the prefix; they just type the differentiating chars.
	" Also, having this option set breaks the plugin.
	set completeopt-=longest

	let &completefunc = 'easycomplete#CompleteFunc' "C-X C-U X-N 触发
	inoremap <expr> <CR> TypeEnterWithPUM()
endfunction



"function s:GetLangTypeRawStr(lang) {{{
function! s:GetLangTypeRawStr(lang)
	let lang_abbr = {}
	
	let lang_abbr['_']					=	"[_]   "
	let lang_abbr['actionscript']		=	"[As]  "
	let lang_abbr['ada']				=	"[Ada] "
	let lang_abbr['alpaca']				=	"[alp] "
	let lang_abbr['apache']				=	"[apa] "
	let lang_abbr['arduino']			=	"[ard] "
	let lang_abbr['autoit']				=	"[aut] "
	let lang_abbr['awk']				=	"[Awk] "
	let lang_abbr['c']					=	"[C]   "
	let lang_abbr['chef']				=	"[chef]"
	let lang_abbr['clojure']			=	"[cloj]"
	let lang_abbr['cmake']				=	"[cmk] "
	let lang_abbr['codeigniter']		=	"[code]"
	let lang_abbr['coffee']				=	"[coff]"
	let lang_abbr['cpp']				=	"[Cpp] "
	let lang_abbr['crystal']			=	"[cyl] "
	let lang_abbr['cs']					=	"[Cs]  "
	let lang_abbr['css']				=	"[Css] "
	let lang_abbr['cuda']				=	"[cuda]"
	let lang_abbr['d']					=	"[D]   "
	let lang_abbr['dart']				=	"[dart]"
	let lang_abbr['django']				=	"[dja] "
	let lang_abbr['dosini']				=	"[Dos] "
	let lang_abbr['eelixir']			=	"[elix]"
	let lang_abbr['elixir']				=	"[elix]"
	let lang_abbr['elm']				=	"[elm] "
	let lang_abbr['erlang']				=	"[elng]"
	let lang_abbr['eruby']				=	"[Ruby]"
	let lang_abbr['falcon']				=	"[falc]"
	let lang_abbr['fortran']			=	"[fort]"
	let lang_abbr['go']					=	"[Go]  "
	let lang_abbr['haml']				=	"[haml]"
	let lang_abbr['handlebars']			=	"[hand]"
	let lang_abbr['haskell']			=	"[hskl]"
	let lang_abbr['html']				=	"[Html]"
	let lang_abbr['htmldjango']			=	"[Html]"
	let lang_abbr['htmltornado']		=	"[Html]"
	let lang_abbr['idris']				=	"[diri]"
	let lang_abbr['jade']				=	"[Jade]"
	let lang_abbr['java']				=	"[Java]"
	let lang_abbr['javascript']			=	"[JS]  "
	let lang_abbr['jinja']				=	"[jinj]"
	let lang_abbr['jsp']				=	"[JSP] "
	let lang_abbr['julia']				=	"[jul] "
	let lang_abbr['kotlin']				=	"[kotl]"
	let lang_abbr['laravel']			=	"[lar] "
	let lang_abbr['ledger']				=	"[ledg]"
	let lang_abbr['lfe']				=	"[lfe] "
	let lang_abbr['ls']					=	"[Ls]  "
	let lang_abbr['lua']				=	"[Lua] "
	let lang_abbr['make']				=	"[Make]"
	let lang_abbr['mako']				=	"[Mako]"
	let lang_abbr['markdown']			=	"[mkd] "
	let lang_abbr['matlab']				=	"[mtl] "
	let lang_abbr['mustache']			=	"[mst] "
	let lang_abbr['objc']				=	"[OC]  "
	let lang_abbr['ocaml']				=	"[OC]  "
	let lang_abbr['openfoam']			=	"[opf] "
	let lang_abbr['perl']				=	"[Perl]"
	let lang_abbr['perl6']				=	"[Perl]"
	let lang_abbr['php']				=	"[Php] "
	let lang_abbr['plsql']				=	"[Sql] "
	let lang_abbr['po']					=	"[po]  "
	let lang_abbr['processing']			=	"[prc] "
	let lang_abbr['progress']			=	"[prg] "
	let lang_abbr['ps1']				=	"[Ps1] "
	let lang_abbr['puppet']				=	"[ppt] "
	let lang_abbr['purescript']			=	"[ps]  "
	let lang_abbr['python']				=	"[PY]  "
	let lang_abbr['r']					=	"[R]   "
	let lang_abbr['rails']				=	"[Rail]"
	let lang_abbr['reason']				=	"[rea] "
	let lang_abbr['rst']				=	"[Rst] "
	let lang_abbr['ruby']				=	"[Ruby]"
	let lang_abbr['rust']				=	"[Rust]"
	let lang_abbr['sass']				=	"[Sass]"
	let lang_abbr['scala']				=	"[scl] "
	let lang_abbr['scheme']				=	"[sch] "
	let lang_abbr['scss']				=	"[scss]"
	let lang_abbr['sh']					=	"[SH]  "
	let lang_abbr['simplemvcf']			=	"[spm] "
	let lang_abbr['slim']				=	"[slim]"
	let lang_abbr['snippets']			=	"[snp] "
	let lang_abbr['sql']				=	"[sql] "
	let lang_abbr['stylus']				=	"[stl] "
	let lang_abbr['supercollider']		=	"[sup] "
	let lang_abbr['systemverilog']		=	"[SYS] "
	let lang_abbr['tcl']				=	"[TCL] "
	let lang_abbr['tex']				=	"[TEX] "
	let lang_abbr['textile']			=	"[TEX] "
	let lang_abbr['twig']				=	"[twi] "
	let lang_abbr['typescript']			=	"[TS]  "
	let lang_abbr['typescriptreact']	=	"[TS]  "
	let lang_abbr['verilog']			=	"[vrl] "
	let lang_abbr['vhdl']				=	"[vhdl]"
	let lang_abbr['vim']				=	"[VIM] "
	let lang_abbr['vue']				=	"[VUE] "
	let lang_abbr['xml']				=	"[XML] "
	let lang_abbr['xslt']				=	"[xslt]"
	let lang_abbr['yii']				=	"[YII] "
	let lang_abbr['zsh']				=	"[ZSH] "

	return has_key(lang_abbr, a:lang) ? get(lang_abbr,a:lang) : "[Ukn] "
endfunction
"}}}

function! TypeEnterWithPUM()
	"如果浮窗存在
	if pumvisible() 
		let word = matchstr(getline('.'), '\S\+\%'.col('.').'c')
		let list = snipMate#GetSnippetsForWordBelowCursor(word, 1)
		call s:CloseCompletionMenu()

		"是否前缀可被匹配 && 是否完全匹配到snippet
		if snipMate#CanBeTriggered() && !empty(list)
			call feedkeys( "\<Plug>snipMateNextOrTrigger" )
		endif

		return ""
	else
		"除此之外还是回车的正常行为
		return "\<CR>"
	endif
endfunction

"'${1:obj}.ajaxSend(function (${1:request, settings}) {
function! s:GetSnippetSimplified(snippet_str)
	let pfx_len = match(a:snippet_str,"${[0-9]:")
	if !empty(a:snippet_str) && pfx_len < 0
		return a:snippet_str
	endif

	let simplified_str = substitute(a:snippet_str,"\${[0-9]:\\(.\\{\-}\\)}","\\1", "g")
	return simplified_str
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
		let snip_obj = s:GetSnip(v)
		let snip_body = s:trim(get(snip_obj,'snipbody'))
		"let menu_str = s:GetLangTypeRawStr(get(snip_obj,'langtype')) . snip_body
		"let menu_str = snip_body
		let menu_kind = s:StringTrim(s:GetLangTypeRawStr(get(snip_obj,'langtype')))
		call add(snipabbr_list, {"word": k , "menu": snip_body, "kind": menu_kind})
	endfor
	call extend(snipabbr_list , a:keywords)
	return snipabbr_list
endfunction


function! s:GetSnip(snipobj)
	let errmsg = "[Unknown snippet]"
	let snip_body = ""
	let lang_type = ""

	if empty(a:snipobj)
		let snip_body = errmsg 
	else 
		let v = values(a:snipobj)
		let k = keys(a:snipobj)
		if !empty(v[0]) && !empty(k[0])
			let snip_body = v[0][0]
			let lang_type = split(k[0], "\\s")[0]
		else
			let snip_body = errmsg 
		endif
	endif
	return {"snipbody":snip_body,"langtype":lang_type}
endfunction

function! s:StringTrim(str)
	if !empty(a:str)
		return substitute(a:str, "^\\s\\+\\(.\\{\-}\\)\\s\\+$","\\1","g")
	endif
	return ""
endfunction

function! s:trim(localstr)
	let default_length = 33
	let simplifed_result = s:GetSnippetSimplified(a:localstr)

	if !empty(simplifed_result) && len(simplifed_result) > default_length 
		let trim_str = simplifed_result[:default_length] . ".."
	else
		let trim_str = simplifed_result 
	endif

	return split(trim_str,"[\n]")[0]
endfunction

" get snippets
function! g:GetSnippets(scopes, trigger)
	if exists("g:snipMate")
		return snipMate#GetSnippets(a:scopes, a:trigger)
	endif
	return {}
endfunction

function! s:GetKeywords(base)
	let bufKeywordList = s:GetBufKeywordsList()
	let wrappedBufKeywordList = s:GetWrappedBufKeywordList(bufKeywordList)
	return s:MenuArrayDistinct(extend(
								\		wrappedBufKeywordList,
								\		s:GetWrappedDictKeywordList()
								\	),
								\	a:base)
endfunction

"popup菜单内关键词去重
"传入的list不应包含snippet缩写
"base: 要匹配的原始字符串
function! s:MenuArrayDistinct(menuList, base)
	if empty(a:menuList) || len(a:menuList) == 0
		return []
	endif

	let menulist_tmp = []
	for item in a:menuList
		call add(menulist_tmp, item.word)
	endfor

	let menulist_filter = uniq(filter(menulist_tmp,
							\ 'matchstrpos(v:val, "'.a:base.'")[1] == 0'))

	let menulist_assetlist = [] "[word1,word2,word3...]
	let menulist_result = [] "[{word:word1,kind..},{word:word2,kind..}..]

	for item in a:menuList
		let word = get(item, "word")
		if index(menulist_assetlist, word) >= 0
			continue
		elseif index(menulist_filter, word) >= 0
			call add(menulist_result,deepcopy(item))
			call add(menulist_assetlist, word)
		endif
	endfor

	return menulist_result
endfunction

function! s:GetBufKeywordsList()
	let tmpkeywords = []
	for buf in getbufinfo()
		let lines = getbufline(buf.bufnr, 1 ,"$")
		for line in lines
			call extend(tmpkeywords, split(line,'[^A-Za-z0-9_#]'))
		endfor
	endfor
	let keywordList = s:ArrayDistinct(tmpkeywords)
	let keywordFormedList = []
	for v in keywordList
		call add(keywordFormedList, v )
	endfor
	return keywordFormedList
endfunction

" ['abc','def','efd'] 
" => [{"word":"abc","kind":"[ID]"},{"word":"def","kind":"[ID]"}...]
function! s:GetWrappedBufKeywordList(keywordList)
	if empty(a:keywordList) || len(a:keywordList) == 0
		return []
	endif
	
	let wrappedList = []
	for word_str in a:keywordList
		call add(wrappedList,{"word":word_str,"kind":"[ID]"})
	endfor
	return wrappedList
endfunction


function! s:GetWrappedDictKeywordList()
	if exists("b:globalDictKeywords")
		return b:globalDictKeywords
	endif

	let b:globalDictKeywords = []

	if !empty(&dictionary)
		"jayli
		let dictsFiles = split(&dictionary,",")
		let dictkeywords = []
		for onedict in dictsFiles 
			let lines = readfile(onedict)
			let filename = substitute(onedict,"^.\\+[\\/]","","g")
			let localdicts = []
			let localWrappedList = []

			if empty(lines)
				continue
			endif

			for line in lines
				call extend(localdicts, split(line,'[^A-Za-z0-9_#]'))
			endfor

			let localdicts = s:ArrayDistinct(localdicts)

			for item in localdicts
				call add (dictkeywords, {
								\	"word" : item ,
								\	"kind" : "[ID]",
								\	"menu" : filename 
								\ })
			endfor
		endfor

		let b:globalDictKeywords = dictkeywords
		return dictkeywords
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
		let tmparray = [] 
		let uniqlist = uniq(a:list)
		for item in uniqlist
			"index(s:tmparray,item) < 0 &&
			if !empty(item) && 
					\ !str2nr(item) &&
					\ len(item) != 1
				call add(tmparray,item)
			endif
		endfor
		return tmparray
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
		call s:SendKeys( "\<ESC>a" )
	endif
endfunction

" 判断当前是否正在输入一个地址path
function! easycomplete#TypingAPath()
	let line = getline('.')
	let coln = col('.') - 1
	let prefx = ' ' . line[0:coln]

	
	"TODO 这个正则不完善，如果是一个字符 / 或者 . 就不行了
	"TODO 如果输入一个单词 easy<Tab>，这时也要匹配当前目录中 easy* 的文件
	
	let fpath = matchstr(prefx,"\\([\\(\\) \"'\\t\\[\\]\\{\\}]\\)\\@<=" .
				\	"\\([\\/\\.]\\+[\\.\\/a-zA-Z0-9\\_\\- ]\\+\\|[\\.\\/]\\)") 

	let pathDict = {}

	let pathDict.fpath = fpath
	let pathDict.start = coln - len(fpath)
	let pathDict.isPath = !empty(fpath) && len(fpath) > 0 ? 1 : 0

	return pathDict
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
	let keywords_result = s:GetKeywords(a:base)
	let snippets_result = g:GetSnippets(deepcopy([&filetype]),a:base)
	let all_result = s:MixinBufKeywordAndSnippets(keywords_result, snippets_result)

	" TODO 如果匹配不出任何结果，还是执行原有按键，我这里用tab
	" 还有一种选择，暂停行为，给出match不成功的提示，强化insert输入tab用s-tab
	" ，而不是一味求全tab的容错，容错不报错也是一个问题
	if len(all_result) == 0
		call s:CloseCompletionMenu()
		call s:SendKeys("\<Tab>")
		return 0
	endif

	return all_result
endfunction

