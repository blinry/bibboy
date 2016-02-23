nnoremap gf :call <SID>OpenPaperUnderCursor()<CR>

fu s:OpenPaperUnderCursor()
    let s:bak=@"

    normal /^}
    normal ?filewwwyi{
    silent execute "!xdg-open %:p:h/".fnameescape(@")." &>/dev/null &"
    redraw!

    let @+=@"
    let @"=s:bak
endf

setlocal iskeyword+=-
setlocal iskeyword+=.
