" Purpose: Vim global plugin for giving a smoothed effect to C^D and C^U
" Author:  Kazark <kazark@zoho.com>
" License: No warranty or guarantee of any kind that it will work as intended
" and will not have harmful or annoying behavior or side effects. That said,
" use, copy, distribute, modify however you like if you find it that useful,
" which you probably won't.

if exists('g:loaded_SimpleSmoothScroll')
    finish
endif
let g:loaded_SimpleSmoothScroll=1

function SimpleSmoothScroll#init()
    nnoremap <C-U> :call SimpleSmoothScroll#ScrollUp()<Enter>
    nnoremap <C-D> :call SimpleSmoothScroll#ScrollDown()<Enter>
    inoremap <C-U> <Esc>:call SimpleSmoothScroll#ScrollUp()<Enter>i
    inoremap <C-D> <Esc>:call SimpleSmoothScroll#ScrollDown()<Enter>i
endfunction

function SimpleSmoothScroll#ScrollUp()
    call s:ScrollWithAction("")
endfunction

function SimpleSmoothScroll#ScrollDown()
    call s:ScrollWithAction("")
endfunction

function s:ScrollWithAction(scrollaction)
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
