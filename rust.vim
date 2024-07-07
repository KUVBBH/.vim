let g:rustfmt_autosave = 1

inoremap <buffer> `> <Esc>/<++><CR>:nohlsearch<CR>c4l
inoremap <buffer> `( ()<++><Esc>F(a
inoremap <buffer> `[ []<++><Esc>F[a
inoremap <buffer> `{ {}<Esc>F{a
inoremap <buffer> `' ''<++><Esc>F'i
inoremap <buffer> `" ""<++><Esc>F"i
" cargo check
map <buffer> <LEADER>c :w<CR>:!clear && cargo check <CR>
map <buffer> <LEADER>C :w<CR>:below terminal ++rows=10 cargo check<CR>
