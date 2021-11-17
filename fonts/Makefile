SHELL := /bin/bash

FONTS := $(HOME)/.config/fontconfig


fonts_full: fonts
fonts_full_uninstall: fonts_uninstall


fonts: .$(FONTS)/fonts.conf

.$(FONTS)/fonts.conf:
	mkdir -p $(FONTS)
	ln -sf $(BAK) $(patsubst %/fonts,%,$(CURDIR))/fonts/fonts.conf $(FONTS)

fonts_uninstall:
	rm $(FONTS)/fonts.conf
	-mv $(FONTS)/fonts.conf.bak $(FONTS)/fonts.conf
	-rmdir $(FONTS)
