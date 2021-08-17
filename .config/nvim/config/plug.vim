" vim-plug section
call plug#begin('$HOME/.config/nvim/plugged')

	" Tab completion
	Plug 'ackyshake/VimCompletesMe'

	" LSP integration
	"Plug 'neovim/nvim-lspconfig'
	Plug 'autozimu/LanguageClient-neovim', {
		\ 'branch': 'next',
		\ 'do': 'bash install.sh',
		\ }

	" Ocaml stack
	Plug 'ocaml/vim-ocaml'

	" Arduino features
	Plug 'stevearc/vim-arduino'

	" Dracula theme
	Plug 'dracula/vim', {'as': 'dracula'}

	" Lightline
	Plug 'itchyny/lightline.vim'

call plug#end()
