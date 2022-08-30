include ../Makefile

CONF   := $(XDG_CONFIG_HOME)/polybar
THEME  := $(XDG_CONFIG_HOME)/wal/templates
MODULE := $(CONF)/modules

install:
	$(call link,$(CONF),config.ini)
	$(call link,$(CONF),padding.ini)
	$(call link,$(THEME),colors-polybar.ini)
	$(call link,$(MODULE),cava.py)
	touch $(CONF)/platform-specific.ini

uninstall:
	rm $(CONF)/platform-specific.ini
	$(call unlink,$(MODULE),cava.py)
	$(call unlink,$(CONF),config.ini)
	$(call unlink,$(CONF),padding.ini)
	$(call unlink,$(THEME),colors-polybar.ini)

