" NERDTree 中默认以 Tab 方式打开文件
call NERDTreeAddKeyMap({
        \ 'key': g:NERDTreeMapCustomOpen,
        \ 'callback': 'NERDTreeFileNodeHandler',
        \ 'quickhelpText': 'echo full path of current node',
        \ 'override':1,
        \ 'scope': 'FileNode' })

function! NERDTreeFileNodeHandler(filenode)
    try
        call g:NERDTree.Close()
    catch
    endtry
    call execute("tabnew ". "/" . join(a:filenode.path.pathSegments,"/"))
    " 这里是 NERDTree 标准的打开 Tab 的方法
    " call a:filenode.activate({'reuse': 'all', 'where': 't'})
    " hack from  ~/.vim/bundle/nerdtree/autoload/nerdtree/ui_glue.vim 99 行
endfunction
