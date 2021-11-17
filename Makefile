.DEFAULT_GOAL := full

SHELL := /bin/bash

PACKAGES := alacritty background bash cowm fonts gnome kitty nvim-gui vim zathura zsh

include $(patsubst %,%/Makefile,$(PACKAGES))

full: $(patsubst %,%_full,$(PACKAGES))

full_uninstall: $(patsubst %,%_full_uninstall,$(PACKAGES))
