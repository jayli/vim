call NERDTreeAddKeyMap({
		\ 'key': 'o',
		\ 'callback': 'NERDTreeFNHandler',
		\ 'quickhelpText': 'echo full path of current node',
		\ 'override':1,
		\ 'scope': 'FileNode' })

function! NERDTreeFNHandler(filenode)
	exec "echom 'asdf=".a:0."'"
	" 在一个 Tab 中打开文件
	call a:filenode.activate({'reuse': 'all', 'where': 't'})
	" hack from  ~/.vim/bundle/nerdtree/autoload/nerdtree/ui_glue.vim 99 行
endfunction

