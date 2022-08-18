include ../Makefile

CONF  := $(XDG_CONFIG_HOME)/polybar
THEME := $(XDG_CONFIG_HOME)/wal/templates

install:
	$(call link,$(CONF),config.ini)
	$(call link,$(CONF),padding.ini)
	$(call link,$(THEME),colors-polybar.ini)
	touch $(CONF)/platform-specific.ini

uninstall:
	rm $(CONF)/platform-specific.ini
	$(call unlink,$(CONF),config.ini)
	$(call unlink,$(CONF),padding.ini)
	$(call unlink,$(THEME),colors-polybar.ini)

