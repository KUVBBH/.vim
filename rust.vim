let g:rustfmt_autosave = 1

" cargo check
map <buffer> <LEADER>c :w<CR>:!clear && cargo check <CR>
map <buffer> <LEADER>C :w<CR>:below terminal ++rows=10 cargo check<CR>
