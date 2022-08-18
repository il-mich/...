include ../Makefile

CONF  := $(XDG_CONFIG_HOME)/rofi
THEME := $(XDG_CONFIG_HOME)/wal/templates

install:
	$(call link,$(CONF),config.rasi)
	$(call link,$(THEME),colors-rofi-light.rasi)
	$(call link,$(THEME),colors-rofi-dark.rasi)

uninstall:
	$(call unlink,$(CONF),config.rasi)
	$(call unlink,$(THEME),colors-rofi-light.rasi)
	$(call unlink,$(THEME),colors-rofi-dark.rasi)
