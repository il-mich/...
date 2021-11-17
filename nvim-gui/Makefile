SHELL := /bin/bash

BIN := $(HOME)/.local/bin
APPLICATIONS := $(HOME)/.local/share/applications


nvim-gui_full: nvim-gui nvim-gui.desktop nvr
nvim-gui_full_uninstall: nvim-gui_uninstall nvim-gui.desktop_uninstall nvr_uninstall


nvim-gui: .$(BIN)/nvim-gui nvr

.$(BIN)/nvim-gui:
	mkdir -p $(BIN)
	ln -sf $(BAK) $(patsubst %/nvim-gui,%,$(CURDIR))/nvim-gui/nvim-gui $(BIN)

nvim-gui_uninstall: nvim-gui.desktop_uninstall nvr_uninstall
	rm $(BIN)/nvim-gui
	-mv $(BIN)/nvim-gui.bak $(BIN)/nvim-gui
	-rmdir $(BIN)


nvim-gui.desktop: .$(APPLICATIONS)/nvim-gui.desktop

.$(APPLICATIONS)/nvim-gui.desktop: nvim-gui
	mkdir -p $(APPLICATIONS)
	ln -sf $(BAK) $(patsubst %/nvim-gui,%,$(CURDIR))/nvim-gui/nvim-gui.desktop $(APPLICATIONS)

nvim-gui.desktop_uninstall:
	rm $(APPLICATIONS)/nvim-gui.desktop
	-mv $(APPLICATIONS)/nvim-gui.desktop.bak $(APPLICATIONS)/nvim-gui.desktop
	-rmdir $(APPLICATIONS)


nvr: .$(BIN)/nvr

.$(BIN)/nvr:
	echo "You need to manually install neovim-remote and its dependencies"
	echo "pip3 install --user neovim-remote"

nvr_uninstall:
	echo "You need to manually uninstall neovim-remote and its dependencies"
