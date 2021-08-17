" Number of undo levels
set undolevels=1000

" Case-insensitive search
set ignorecase

" Remove search results with <esc><esc>
nnoremap <esc><esc> :silent! nohls<cr>

" Enable mouse interactions
set mouse=a

" Copy to clipboard
set clipboard+=unnamedplus

" Show line numbers
set number

" Wrap lines
set wrap

" Use the number column for the text of wrapped lines
set cpoptions+=n

" Break lines at word
set linebreak

" Highlight matching brace
set showmatch

" Line height
set linespace=2

" Remove scrollbar
set guioptions=

" Number of auto-indent spaces
set shiftwidth=4

" Number of spaces per Tab
set tabstop=4

" Dont' change tab to four spaces
set noexpandtab

" Remove trailing whitespace on write
autocmd BufWritePre * %s/\s\+$//e

" Folding
set foldmethod=indent
set foldlevel=99

" Return to last edit position when opening files
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ 	exe "normal! g`\"" |
	\ endif

