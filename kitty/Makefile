SHELL := /bin/bash

KITTY := $(HOME)/.config/kitty


kitty_full: kitty
kitty_full_uninstall: kitty_uninstall


kitty: .$(KITTY)/kitty.conf

.$(KITTY)/kitty.conf:
	mkdir -p $(KITTY)
	ln -sf $(BAK) $(patsubst %/kitty,%,$(CURDIR))/kitty/kitty.conf $(KITTY)

kitty_uninstall:
	rm $(KITTY)/kitty.conf
	-mv $(KITTY)/kitty.conf.bak $(KITTY)/kitty.conf
	-rmdir $(KITTY)
