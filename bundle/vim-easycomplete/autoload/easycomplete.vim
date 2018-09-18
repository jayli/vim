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
	
	letlang_abbr['_']               = "[_]"
	letlang_abbr['actionscript']    = "[As]"
	letlang_abbr['ada']             = "[Ada]"
	letlang_abbr['alpaca']          = "[alp]"
	letlang_abbr['apache']          = "[apa]"
	letlang_abbr['arduino']         = "[ard]"
	letlang_abbr['autoit']          = "[aut]"
	letlang_abbr['awk']             = "[Awk]"
	letlang_abbr['c']               = "[C]"
	letlang_abbr['chef']            = "[chef]"
	letlang_abbr['clojure']         = "[cloj]"
	letlang_abbr['cmake']           = "[cmk]"
	letlang_abbr['codeigniter']     = "[code]"
	letlang_abbr['coffee']          = "[coff]"
	letlang_abbr['cpp']             = "[Cpp]"
	letlang_abbr['crystal']         = "[cyl]"
	letlang_abbr['cs']              = "[Cs]"
	letlang_abbr['css']             = "[Css]"
	letlang_abbr['cuda']            = "[cuda]"
	letlang_abbr['d']               = "[D]"
	letlang_abbr['dart']            = "[dart]"
	letlang_abbr['django']          = "[dja]"
	letlang_abbr['dosini']          = "[Dos]"
	letlang_abbr['eelixir']         = "[elix]"
	letlang_abbr['elixir']          = "[elix]"
	letlang_abbr['elm']             = "[elm]"
	letlang_abbr['erlang']          = "[elng]"
	letlang_abbr['eruby']           = "[Ruby]"
	letlang_abbr['falcon']          = "[falc]"
	letlang_abbr['fortran']         = "[fort]"
	letlang_abbr['go']              = "[Go]"
	letlang_abbr['haml']            = "[haml]"
	letlang_abbr['handlebars']      = "[hand]"
	letlang_abbr['haskell']         = "[hskl]"
	letlang_abbr['html']            = "[Html]"
	letlang_abbr['htmldjango']      = "[Html]"
	letlang_abbr['htmltornado']     = "[Html]"
	letlang_abbr['idris']           = "[diri]"
	letlang_abbr['jade']            = "[Jade]"
	letlang_abbr['java']            = "[Java]"
	letlang_abbr['javascript']      = "[JS]"
	letlang_abbr['jinja']           = "[jinj]"
	letlang_abbr['jsp']             = "[JSP]"
	letlang_abbr['julia']           = "[jul]"
	letlang_abbr['kotlin']          = "[kotl]"
	letlang_abbr['laravel']         = "[lar]"
	letlang_abbr['ledger']          = "[ledg]"
	letlang_abbr['lfe']             = "[lfe]"
	letlang_abbr['ls']              = "[Ls]"
	letlang_abbr['lua']             = "[Lua]"
	letlang_abbr['make']            = "[Make]"
	letlang_abbr['mako']            = "[Mako]"
	letlang_abbr['markdown']        = "[mkd]"
	letlang_abbr['matlab']          = "[mtl]"
	letlang_abbr['mustache']        = "[mst]"
	letlang_abbr['objc']            = "[OC]"
	letlang_abbr['ocaml']           = "[OC]"
	letlang_abbr['openfoam']        = "[opf]"
	letlang_abbr['perl']            = "[Perl]"
	letlang_abbr['perl6']           = "[Perl]"
	letlang_abbr['php']             = "[Php]"
	letlang_abbr['plsql']           = "[Sql]"
	letlang_abbr['po']              = "[po]"
	letlang_abbr['processing']      = "[prc]"
	letlang_abbr['progress']        = "[prg]"
	letlang_abbr['ps1']             = "[Ps1]"
	letlang_abbr['puppet']          = "[ppt]"
	letlang_abbr['purescript']      = "[ps]"
	letlang_abbr['python']          = "[PY]"
	letlang_abbr['r']               = "[R]"
	letlang_abbr['rails']           = "[Rail]"
	letlang_abbr['reason']          = "[rea]"
	letlang_abbr['rst']             = "[Rst]"
	letlang_abbr['ruby']            = "[Ruby]"
	letlang_abbr['rust']            = "[Rust]"
	letlang_abbr['sass']            = "[Sass]"
	letlang_abbr['scala']           = "[scl]"
	letlang_abbr['scheme']          = "[sch]"
	letlang_abbr['scss']            = "[scss]"
	letlang_abbr['sh']              = "[SH]"
	letlang_abbr['simplemvcf']      = "[spm]"
	letlang_abbr['slim']            = "[slim]"
	letlang_abbr['snippets']        = "[snp]"
	letlang_abbr['sql']             = "[sql]"
	letlang_abbr['stylus']          = "[stl]"
	letlang_abbr['supercollider']   = "[sup]"
	letlang_abbr['systemverilog']   = "[SYS]"
	letlang_abbr['tcl']             = "[TCL]"
	letlang_abbr['tex']             = "[TEX]"
	letlang_abbr['textile']         = "[TEX]"
	letlang_abbr['twig']            = "[twi]"
	letlang_abbr['typescript']      = "[TS]"
	letlang_abbr['typescriptreact'] = "[TS]"
	letlang_abbr['verilog']         = "[vrl]"
	letlang_abbr['vhdl']            = "[vhdl]"
	letlang_abbr['vim']             = "[VIM]"
	letlang_abbr['vue']             = "[VUE]"
	letlang_abbr['xml']             = "[XML]"
	letlang_abbr['xslt']            = "[xslt]"
	letlang_abbr['yii']             = "[YII]"
	letlang_abbr['zsh']             = "[ZSH]"

	return has_key(lang_abbr,a:lang) ? get(lang_abbr,a:lang) : "[Ukn]"
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
function! easycomplete#TypingAPath(base)
	" 这里不清楚为什么
	" 输入 ./a/b/c ，./a/b/  两者得到的prefx都为空
	" 前者应该得到c，
	" 这里只能临时将base透传进来表示文件名
	let line = getline('.')
	let coln = col('.') - 1
	let prefx = ' ' . line[0:coln]

	"TODO 这个正则不完善，如果是一个字符 / 或者 . 就不行了
	"438行有一个bug
	" fpath和spath只是path，没有filename
	let fpath = matchstr(prefx,"\\([\\(\\) \"'\\t\\[\\]\\{\\}]\\)\\@<=" .
				\	"\\([\\/\\.]\\+[\\.\\/a-zA-Z0-9\\_\\- ]\\+\\|[\\.\\/]\\)") 

	" 兼容单个/匹配的情况
	let spath = substitute(fpath,"^[\\.\\/].*\\/","./","g") 

	let pathDict = {}

	let pathDict.fname = a:base
	let pathDict.fpath = s:GetPathName(fpath)	" fullpath
	let pathDict.spath = s:GetPathName(spath)	" shortpath
	let pathDict.full_path_start = coln - len(fpath) + 2
	let pathDict.short_path_start = coln - len(spath) + 2
	if match(prefx,"\\(\\/\\/\\|\\/\\*\\)") < 0
		" 排除掉注释的情况
		let pathDict.isPath = !empty(fpath) && len(fpath) > 0 ? 1 : 0
	else
		let pathDict.isPath = 0
	endif

	return pathDict
endfunction

" 根据输入的path匹配出结果，return ['f1','f2','d1','d2']
" ./ => 当前bufpath查询
" ../../ => 同上
" /a/b/c => 直接查询
function! s:GetDirAndFiles(typing_path)
	let fpath = a:typing_path.fpath
	let fname = bufname('%')
	let bufpath = s:GetPathName(fname)

	if len(fpath) > 0 && fpath[0] == "."
		let path = simplify(bufpath . fpath)
	else
		let path = simplify(fpath)
	endif

	" Bug:
	" let full_pathname
	" if s:GetFileName(full_pathname) == 0  
	" 第二行的 full_pathname 无法tab匹配出来
	if a:typing_path.fname == ""
		" 查找目录下的文件和目录
		let result_list = systemlist('ls '. path)
	else
		" 带有filename
		" 查找目录下匹配文件名前缀的文件和目录
		let g:cmd = 'ls '. s:GetPathName(path) .
					\ ' | grep -i ^' . a:typing_path.fname
		let result_list = systemlist('ls '. s:GetPathName(path) . 
										\ " 2>/dev/null") 
		let result_list = filter(result_list, 
				\ 'v:val =~ "'. a:typing_path.fname . '"')
	endif
	return result_list
endfunction

function! s:GetFileName(path)
	let path =  simplify(a:path)
	let fname = matchstr(path,"\\([\\/]\\)\\@<=[^\\/]\\+$")
	return fname
endfunction

function! s:GetPathName(path)
	let path =  simplify(a:path)
	let pathname = matchstr(path,"^.*\\/")
	return pathname
endfunction

"function! easycomplete#

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
	let typing_path = easycomplete#TypingAPath(a:base)

	" 如果正在敲入一个文件路径
	if typing_path.isPath
		" ./a/b/c/d
		" ../asdf./
		" /a/b/c/ds
		" /a/b/c/d/
		if a:findstart
			return typing_path.short_path_start
		endif
		let result = s:GetDirAndFiles(typing_path)
		return result
	endif

	" 正常关键字处理
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

