include ../Makefile

CONF  := $(XDG_CONFIG_HOME)/dk
THEME := $(XDG_CONFIG_HOME)/wal/templates

install:
	$(call link,$(CONF),dkrc)
	$(call link,$(CONF),sxhkdrc)
	$(call link,$(THEME),colors-dk.sh)

uninstall:
	$(call unlink,$(CONF),dkrc)
	$(call unlink,$(CONF),sxhkdrc)
	$(call unlink,$(THEME),colors-dk.sh)
