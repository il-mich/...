SHELL := /bin/bash


zsh_full: zshenv zshrc zlogout
zsh_full_uninstall: zshenv_uninstall zshrc_uninstall zlogout_uninstall


zshenv: $(HOME)/.zshenv

$(HOME)/.zshenv:
	ln -sf $(BAK) $(patsubst %/zsh,%,$(CURDIR))/zsh/zshenv $(HOME)/.zshenv

zshenv_uninstall:
	rm $(HOME)/.zshenv
	-mv $(HOME)/.zshrc.bak $(HOME).zshrc


zshrc: $(HOME)/.zshrc

$(HOME)/.zshrc:
	ln -sf $(BAK) $(patsubst %/zsh,%,$(CURDIR))/zsh/zshrc $(HOME)/.zshrc

zshrc_uninstall:
	rm $(HOME)/.zshrc
	-mv $(HOME)/.zshrc.bak $(HOME)/.zshrc


zlogout: $(HOME)/.zlogout

$(HOME)/.zlogout:
	ln -sf $(BAK) $(patsubst %/zsh,%,$(CURDIR))/zsh/zlogout $(HOME)/.zlogout

zlogout_uninstall:
	rm $(HOME)/.zlogout
	-mv $(HOME)/.zlogout.bak $(HOME).zlogout
