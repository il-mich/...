SHELL := /bin/bash


vim_full: vim
vim_full_uninstall: vim_uninstall


vim: .$(HOME)/.vimrc

.$(HOME)/.vimrc:
	ln -sf $(BAK) $(patsubst %/vim,%,$(CURDIR))/vim/vimrc $(HOME)/.vimrc

vim_uninstall:
	rm $(HOME)/.vimrc
	-mv $(HOME)/.vimrc.bak $(HOME)/.vimrc
