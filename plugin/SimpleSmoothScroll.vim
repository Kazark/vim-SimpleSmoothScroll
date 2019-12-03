" Purpose: Vim global plugin for giving a smoothed effect to C^D and C^U
" Author:  Kazark <kazark@zoho.com>
" License: No warranty or guarantee of any kind that it will work as intended
" and will not have harmful or annoying behavior or side effects. That said,
" use, copy, distribute, modify however you like if you find it that useful,
" which you probably won't.

if exists('g:loaded_SimpleSmoothScroll_plugin')
    finish
endif
let g:loaded_SimpleSmoothScroll_plugin=1

if !exists('g:SimpleSmoothScrollDelay')
    let g:SimpleSmoothScrollDelay=10
endif

let s:save_cpo = &cpo
set cpo&vim

function s:ScrollUp()
    call s:ScrollWithAction("")
endfunction

function s:ScrollDown()
    call s:ScrollWithAction("")
endfunction

function s:ScrollWithAction(scrollaction)
    execute "norm " . a:scrollaction
    redraw
    let counter=1
    while counter<&scroll
        let counter+=1
        execute "sleep ".g:SimpleSmoothScrollDelay."m"
        redraw
        execute "norm " . a:scrollaction
    endwhile
endfunction

nnoremap <C-U> :call <SID>ScrollUp()<Enter>
nnoremap <C-D> :call <SID>ScrollDown()<Enter>
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

let &cpo = s:save_cpo
