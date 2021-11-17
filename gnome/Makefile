SHELL := /bin/bash

BIN := $(HOME)/.local/bin


gnome_full: gnome-randr screen-flip
gnome_full_uninstall: gnome-randr_uninstall screen-flip_uninstall


gnome-randr: .$(BIN)/gnome-randr

.$(BIN)/gnome-randr:
	mkdir -p $(BIN)
	ln -sf $(BAK) $(patsubst %/gnome,%,$(CURDIR))/gnome/gnome-randr $(BIN)

gnome-randr_uninstall: screen-flip_uninstall
	rm $(BIN)/gnome-randr
	-mv $(BIN)/gnome-randr.bak $(BIN)/gnome-randr
	-rmdir $(BIN)


screen-flip: gnome-randr .$(BIN)/screen-flip

.$(BIN)/screen-flip:
	mkdir -p $(BIN)
	ln -sf $(BAK) $(patsubst %/gnome,%,$(CURDIR))/gnome/screen-flip $(BIN)

screen-flip_uninstall:
	rm $(BIN)/screen-flip
	-mv $(BIN)/screen-flip.bak $(BIN)/screen-flip
	-rmdir $(BIN)
