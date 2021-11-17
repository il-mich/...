SHELL := /bin/bash

ALACRITTY := $(HOME)/.config/alacritty


alacritty_full: alacritty
alacritty_full_uninstall: alacritty_uninstall


alacritty: .$(ALACRITTY)/alacritty.yml

.$(ALACRITTY)/alacritty.yml:
	mkdir -p $(ALACRITTY)
	ln -sf $(BAK) $(patsubst %/alacritty,%,$(CURDIR))/alacritty/alacritty.yml $(ALACRITTY)

alacritty_uninstall:
	rm $(ALACRITTY)/alacritty.yml
	-mv $(ALACRITTY)/alacritty.yml.bak $(ALACRITTY)/alacritty.yml
	-rmdir $(ALACRITTY)
