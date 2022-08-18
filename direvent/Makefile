include ../Makefile

CONF  := $(XDG_CONFIG_HOME)/direvent
BIN   := $(HOME)/.local/bin

install:
	$(call link,$(CONF),direvent.conf)
	$(call link,$(BIN),toggle-bar.sh)

uninstall:
	$(call unlink,$(CONF),direvent.conf)
	$(call unlink,$(BIN),toggle-bar.sh)
