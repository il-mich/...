include ../Makefile

BIN := $(HOME)/.local/bin
APPLICATIONS := $(HOME)/.local/share/applications

install:
	$(call link,$(BIN),nvim-gui)
	$(call link,$(APPLICATIONS),nvim-gui.desktop)
	-pip3 install --user neovim-remote
	echo "If the command failed you need to manually install neovim-remote and its dependencies"

uninstall:
	$(call unlink,$(BIN),nvim-gui)
	$(call unlink,$(APPLICATIONS),nvim-gui.desktop)
	echo "You need to manually uninstall neovim-remote and its dependencies"
