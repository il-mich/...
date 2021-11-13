" Line numbers
set nu

" Syntax
syntax on

" Mouse control
set mouse=a

" Highlight search results
set hlsearch
nnoremap <esc><esc> :silent! nohls<cr>

" Better colours
" Parenthesis
hi MatchParen cterm=NONE ctermfg=DarkGreen ctermbg=NONE

" Search
hi Search cterm=NONE ctermfg=Black ctermbg=Yellow

" Errors
hi Error cterm=NONE ctermfg=Black ctermbg=DarkMagenta

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
