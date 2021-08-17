" Better colours
" Parenthesis
"hi MatchParen cterm=NONE ctermfg=DarkGreen ctermbg=NONE

" Search
"hi Search cterm=NONE ctermfg=Black ctermbg=Yellow

" Errors
"hi Error cterm=NONE ctermfg=Black ctermbg=DarkMagenta

" Popup menu bg for Dracula theme
"hi Pmenu guibg=g:dracula#palette.bg
"hi PmenuSel guibg=#af87ff
"g:dracula#palette.purple

"hi Pmenu ctermbg=DraculaBgDark

" Remove mode for lightline integration
set noshowmode

" Lightline colors
let g:lightline = {
      \ 'colorscheme': 'default',
      \ }
