
if has( 'vim_starting' ) " Loading at startup.
	augroup EasyCompleteStart
		autocmd!
		autocmd VimEnter * call easycomplete#Enable()
	augroup END
else " Manual loading with :packadd.
	call easycomplete#Enable()
endif

let g:globalDictKeywords =
      \ get( g:, 'globalDictKeywords', 0 )


