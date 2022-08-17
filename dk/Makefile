SHELL := /bin/bash

CONF  := dk
THEME := wal/templates

define link =
	mkdir -p $(XDG_CONFIG_HOME)/$(1)
	ln  --backup=existing --suffix=.bak -sf $(CURDIR)/$(2) $(XDG_CONFIG_HOME)/$(1)
endef

install: .$(XDG_CONFIG_HOME)/$(CONF)/dkrc .$(XDG_CONFIG_HOME)/$(CONF)/sxhkdrc .$(XDG_CONFIG_HOME)/$(THEME)/colors-dk.sh

.$(XDG_CONFIG_HOME)/$(CONF)/dkrc:
	$(call link,$(CONF),dkrc)

.$(XDG_CONFIG_HOME)/$(CONF)/sxhkdrc:
	$(call link,$(CONF),sxhkdrc)

.$(XDG_CONFIG_HOME)/$(THEME)/colors-dk.sh:
	$(call link,$(THEME),colors-dk.sh)

uninstall:
	rm $(XDG_CONFIG_HOME)/$(CONF)/dkrc $(XDG_CONFIG_HOME)/$(CONF)/sxhkdrc $(XDG_CONFIG_HOME)/$(THEME)/colors-dk.sh
	-mv $(XDG_CONFIG_HOME)/$(CONF)/dkrc.bak $(XDG_CONFIG_HOME)/$(CONF)/dkrc
	-mv $(XDG_CONFIG_HOME)/$(CONF)/sxhkdrc.bak $(XDG_CONFIG_HOME)/$(CONF)/sxhkdrc
	-mv $(XDG_CONFIG_HOME)/$(THEME)/colors-dk.sh.bak $(XDG_CONFIG_HOME)/$(THEME)/colors-dk.sh
