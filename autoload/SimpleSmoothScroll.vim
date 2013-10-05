if !exists('g:SimpleSmoothScroll')
    let g:SimpleSmoothScroll=1

    function SimpleSmoothScroll#init()
        nnoremap <C-U> :call SimpleSmoothScroll#ScrollUp()<Enter>
        nnoremap <C-D> :call SimpleSmoothScroll#ScrollDown()<Enter>
        inoremap <C-U> <Esc>:call SimpleSmoothScroll#ScrollUp()<Enter>i
        inoremap <C-D> <Esc>:call SimpleSmoothScroll#ScrollDown()<Enter>i
    endfunction

    function SimpleSmoothScroll#ScrollUp()
        ScrollWithAction("")
    endfunction

    function SimpleSmoothScroll#ScrollDown()
        ScrollWithAction("")
    endfunction

    function SimpleSmoothScroll#ScrollWithAction(scrollaction)
        execute "norm " . a:scrollaction
        redraw
        let counter=1
        while counter<&scroll
            let counter+=1
            sleep 10m
            redraw
            execute "norm " . a:scrollaction
        endwhile
    endfunction
endif

