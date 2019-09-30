command! -nargs=0 -complete=command IndentModify   call s:ModifyTabAnd2SpaceTo4Space()
command! -nargs=0 -complete=command IndentShowTab  call s:ShowTabs()
command! -nargs=0 -complete=command ShowIndentTabs call s:ShowTabs()

function! s:ConvertTabIndentTo4SpaceIndent()
    set ts=4
    set sw=4
    set sts=4
    set expandtab
    execute "%retab!"
endfunction

function! s:Convert2SpaceIndentTo4SpaceIndent()
    setl ts=2
    setl sw=2
    setl sts=2
    setl noexpandtab
    execute "%retab!"
    setl ts=4
    setl sw=4
    setl sts=4
    setl expandtab
    execute "%retab!"
endfunction

function! s:ModifyTabAnd2SpaceTo4Space()
    call s:Convert2SpaceIndentTo4SpaceIndent()
    call s:ConvertTabIndentTo4SpaceIndent()
endfunction

function! s:ShowTabs()
    set list
    set listchars=tab:>-
endfunction
