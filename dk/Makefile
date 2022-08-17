SHELL := /bin/bash

DK := $(HOME)/.config/dk

install: .$(DK)/dkrc .$(DK)/sxhkdrc

.$(DK)/dkrc:
	mkdir -p $(DK)
	-mv $(DK)/dkrc $(DK)/dkrc.bak
	ln -sf $(patsubst %/dk,%,$(CURDIR))/dk/dkrc $(DK)

.$(DK)/sxhkdrc:
	mkdir -p $(DK)
	-mv $(DK)/sxhkdrc $(DK)/sxhkdrc.bak
	ln -sf $(patsubst %/dk,%,$(CURDIR))/dk/sxhkdrc $(DK)

uninstall:
	rm $(DK)/dkrc $(DK)/sxhkdrc
	-mv $(DK)/dkrc.bak $(DK)/dkrc
	-mv $(DK)/sxhkdrc.bak $(DK)/sxhkdrc
