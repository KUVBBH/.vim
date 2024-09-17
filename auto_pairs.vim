" 开关插件
let g:AutoPairsShortcutToggle = '<C-p>'

" input: |[foo, bar()] (press (<C-e> at |)
" output: ([foo, bar()])
let g:AutoPairsShortcutFastWrap = '<C-e>'

" 跳转到下一个闭合的括号
let g:AutoPairsShortcutJump = '<C-n>'

let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''", '<':'>'}
