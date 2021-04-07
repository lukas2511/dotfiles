" Vim color file
"
" Adapted from https://github.com/tomasr/molokai
" Using only basic 16 colors to make swapping between bright and dark mode
" easier
"

hi clear

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="notmolokai"

" vertical split lines should look like a line instead of a dashed one
set fillchars+=vert:\|
"
" Support for 256-color terminal
"
if &t_Co > 255
   hi Normal                   ctermbg=0
   hi CursorLine               ctermbg=8   cterm=none
   hi CursorLineNr ctermfg=11               cterm=none
   hi Boolean         ctermfg=5
   hi Character       ctermfg=2
   hi Number          ctermfg=5
   hi String          ctermfg=2
   hi Conditional     ctermfg=9               cterm=bold
   hi Constant        ctermfg=5               cterm=bold
   hi Cursor          ctermfg=8  ctermbg=8
   hi Debug           ctermfg=13               cterm=bold
   hi Define          ctermfg=14
   hi Delimiter       ctermfg=8

   hi DiffAdd                     ctermbg=6
   hi DiffChange      ctermfg=2 ctermbg=8
   hi DiffDelete      ctermfg=9 ctermbg=5
   hi DiffText                    ctermbg=7 cterm=bold

   hi Directory       ctermfg=10               cterm=bold
   hi Error           ctermfg=13 ctermbg=1
   hi ErrorMsg        ctermfg=9 ctermbg=8    cterm=bold
   hi Exception       ctermfg=10               cterm=bold
   hi Float           ctermfg=5
   hi FoldColumn      ctermfg=6  ctermbg=8
   hi Folded          ctermfg=6  ctermbg=8
   hi Function        ctermfg=10
   hi Identifier      ctermfg=11               cterm=none
   hi Ignore          ctermfg=7 ctermbg=8
   hi IncSearch       ctermfg=2 ctermbg=8

   hi keyword         ctermfg=9               cterm=bold
   hi Label           ctermfg=11               cterm=none
   hi Macro           ctermfg=2
   hi SpecialKey      ctermfg=14

   hi MatchParen      ctermfg=11  ctermbg=8 cterm=bold
   hi ModeMsg         ctermfg=11
   hi MoreMsg         ctermfg=11
   hi Operator        ctermfg=9

   " complete menu
   hi Pmenu           ctermfg=14  ctermbg=8
   hi PmenuSel        ctermfg=15 ctermbg=7
   hi PmenuSbar                   ctermbg=8
   hi PmenuThumb      ctermfg=14

   hi PreCondit       ctermfg=10               cterm=bold
   hi PreProc         ctermfg=10
   hi Question        ctermfg=14
   hi Repeat          ctermfg=9               cterm=bold
   hi Search          ctermfg=0   ctermbg=11   cterm=NONE

   " marks column
   hi SignColumn      ctermfg=10 ctermbg=8
   hi SpecialChar     ctermfg=9               cterm=bold
   hi SpecialComment  ctermfg=7               cterm=bold
   hi Special         ctermfg=14
   hi Statement       ctermfg=9               cterm=bold
   hi StatusLine      ctermfg=8 ctermbg=7
   hi StatusLineNC    ctermfg=7 ctermbg=8
   hi StorageClass    ctermfg=11
   hi Structure       ctermfg=14
   hi Tag             ctermfg=9
   hi Title           ctermfg=3
   hi Todo            ctermfg=15 ctermbg=8   cterm=bold

   hi Typedef         ctermfg=14
   hi Type            ctermfg=14                cterm=none
   hi Underlined      ctermfg=7               cterm=underline

   hi VertSplit       ctermfg=8 ctermbg=0   cterm=bold
   hi VisualNOS                   ctermbg=8
   hi Visual                      ctermbg=8
   hi WarningMsg      ctermfg=15 ctermbg=8   cterm=bold
   hi WildMenu        ctermfg=14  ctermbg=8

   hi Comment         ctermfg=7
   hi CursorColumn                ctermbg=8
   hi ColorColumn                 ctermbg=8
   hi LineNr          ctermfg=15 ctermbg=0
   hi NonText         ctermfg=7

   hi SpecialKey      ctermfg=7

   if exists("g:rehash256") && g:rehash256 == 1
       hi Normal       ctermfg=15 ctermbg=0
       hi CursorLine               ctermbg=8   cterm=none
       hi CursorLineNr ctermfg=11               cterm=none

       hi Boolean         ctermfg=13
       hi Character       ctermfg=11
       hi Number          ctermfg=13
       hi String          ctermfg=11
       hi Conditional     ctermfg=9               cterm=bold
       hi Constant        ctermfg=13               cterm=bold

       hi DiffDelete      ctermfg=9 ctermbg=8

       hi Directory       ctermfg=2               cterm=bold
       hi Error           ctermfg=11 ctermbg=8
       hi Exception       ctermfg=2               cterm=bold
       hi Float           ctermfg=13
       hi Function        ctermfg=2
       hi Identifier      ctermfg=11

       hi Keyword         ctermfg=9               cterm=bold
       hi Operator        ctermfg=9
       hi PreCondit       ctermfg=2               cterm=bold
       hi PreProc         ctermfg=2
       hi Repeat          ctermfg=9               cterm=bold

       hi Statement       ctermfg=9               cterm=bold
       hi Tag             ctermfg=9
       hi Title           ctermfg=11
       hi Visual                      ctermbg=8

       hi Comment         ctermfg=7
       hi LineNr          ctermfg=8 ctermbg=0
       hi NonText         ctermfg=8
       hi SpecialKey      ctermfg=8
   endif
end

" Must be at the end, because of ctermbg=0 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark

