" =============================================================================
" Filename: autoload/lightline/colorscheme/notwombat.vim
" Author: lukas2511
" License: MIT License
" Last Change: 2019/12/27 05:15:20.
" =============================================================================
let s:base03 = [ '#242424', 8 ]
let s:base023 = [ '#353535 ', 8 ]
let s:base02 = [ '#444444 ', 8 ]
let s:base01 = [ '#585858', 0 ]
let s:base00 = [ '#666666', 7  ]
let s:base0 = [ '#808080', 7 ]
let s:base1 = [ '#969696', 7 ]
let s:base2 = [ '#a8a8a8', 7 ]
let s:base3 = [ '#d0d0d0', 15 ]
let s:yellow = [ '#cae682', 11 ]
let s:orange = [ '#e5786d', 3 ]
let s:red = [ '#e5786d', 9 ]
let s:magenta = [ '#f2c68a', 11 ]
let s:blue = [ '#8ac6f2', 6 ]
let s:cyan = [ '#ffffff', 14 ]
let s:green = [ '#95e454', 10 ]
let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:base02, s:blue ], [ s:base3, s:base01 ] ]
let s:p.normal.right = [ [ s:base02, s:base0 ], [ s:base1, s:base01 ] ]
let s:p.inactive.right = [ [ s:base023, s:base01 ], [ s:base00, s:base02 ] ]
let s:p.inactive.left =  [ [ s:base1, s:base02 ], [ s:base00, s:base023 ] ]
let s:p.insert.left = [ [ s:base02, s:green ], [ s:base3, s:base01 ] ]
let s:p.replace.left = [ [ s:base023, s:red ], [ s:base3, s:base01 ] ]
let s:p.visual.left = [ [ s:base02, s:magenta ], [ s:base3, s:base01 ] ]
let s:p.normal.middle = [ [ s:base2, s:base02 ] ]
let s:p.inactive.middle = [ [ s:base1, s:base023 ] ]
let s:p.tabline.left = [ [ s:base3, s:base00 ] ]
let s:p.tabline.tabsel = [ [ s:base2, s:base023 ] ]
let s:p.tabline.middle = [ [ s:base02, s:base1 ] ]
let s:p.tabline.right = [ [ s:base2, s:base01 ] ]
let s:p.normal.error = [ [ s:base03, s:red ] ]
let s:p.normal.warning = [ [ s:base023, s:yellow ] ]

let g:lightline#colorscheme#notwombat#palette = lightline#colorscheme#flatten(s:p)
