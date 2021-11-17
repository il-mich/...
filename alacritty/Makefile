SHELL := /bin/bash

config := alacritty fonts kitty zathura

$(HOME)/.config/alacritty/alacritty: $(CURDIR)
	mkdir -p $(HOME)/.config/alacritty
	ln -s $(BAK) $(HOME)/.config/alacritty/alacritty.yml $(CURDIR)/local/alacritty.yml

alacritty: $(HOME)/.config/alacritty/alacritty.yml
