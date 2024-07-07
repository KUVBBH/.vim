" ======= markdown =======

inoremap <buffer> `> <Esc>/<++><CR>:nohlsearch<CR>c4l
inoremap <buffer> `b **** <++><Esc>F*hi
inoremap <buffer> `* ** <++><Esc>F*i
inoremap <buffer> `` `` <++><Esc>F`i
inoremap <buffer> `c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
inoremap <buffer> `1 #<Space><Enter><++><Esc>kA
inoremap <buffer> `2 ##<Space><Enter><++><Esc>kA
inoremap <buffer> `3 ###<Space><Enter><++><Esc>kA
inoremap <buffer> `4 ####<Space><Enter><++><Esc>kA
inoremap <buffer> `5 #####<Space><Enter><++><Esc>kA
inoremap <buffer> `6 ######<Space><Enter><++><Esc>kA
inoremap <buffer> `p ![](<++>) <++><Esc>F[a
inoremap <buffer> `j <img src="" width="auto<++>" height="auto<++>" alt="None"<++>><++><Esc>0f"a
inoremap <buffer> `~ ~~~~ <++><Esc>F~hi
inoremap <buffer> `- ---<Enter><Enter>
inoremap <buffer> `= ===<Enter><Enter>
inoremap <buffer> `l --------<Enter>
inoremap <buffer> `i <++>
inoremap <buffer> `a [](<++>)<++><Esc>F[a
inoremap <buffer> `m <span id="move"></span><++><Esc>F"i
