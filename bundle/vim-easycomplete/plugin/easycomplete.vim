
if has( 'vim_starting' ) " vim 启动时加载
	augroup EasyCompleteStart
		autocmd!
		autocmd VimEnter * call easycomplete#Enable()
	augroup END
else " 通过 :packadd 手动加载
	call easycomplete#Enable()
endif

"let g:globalDictKeywords =
"      \ get( g:, 'globalDictKeywords', 0 )


