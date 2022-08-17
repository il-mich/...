SHELL := /bin/bash

define link =
	mkdir -p $(1)
	ln --suffix=.bak -sfb $(CURDIR)/$(2) $(1)/$(3)$(2)
endef

define unlink =
	rm $(1)/$(3)$(2)
	-mv $(1)/$(3)$(2).bak $(1)/$(3)$(2)
	-rmdir $(1)
endef
