include ../Makefile

CONF  := $(XDG_CONFIG_HOME)/zathura
THEME := $(XDG_CONFIG_HOME)/wal/templates

install:
	$(call link,$(CONF),zathurarc)
	$(call link,$(THEME),colors-zathurarc)

uninstall:
	$(call unlink,$(CONF),zathurarc)
	$(call unlink,$(THEME),colors-zathurarc)
