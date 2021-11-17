SHELL := /bin/bash

ZATHURA = $(HOME)/.config/zathura


zathura_full: zathura
zathura_full_uninstall: zathura_uninstall


zathura: .$(ZATHURA)/zathurarc

.$(ZATHURA)/zathurarc:
	mkdir -p $(ZATHURA)
	ln -sf $(BAK) $(patsubst %/zathura,%,$(CURDIR))/zathura/zathurarc $(ZATHURA)

zathura_uninstall:
	rm $(ZATHURA)/zathurarc
	-mv $(ZATHURA)/zathurarc.bak $(ZATHURA)/zathurarc
	-rmdir $(ZATHURA)
