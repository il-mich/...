SHELL := /bin/bash

BIN := $(HOME)/.local/bin


cowm_full: cowm
cowm_full_uninstall: cowm_uninstall


cowm: .$(BIN)/cowm-helper

.$(BIN)/cowm-helper:
	mkdir -p $(BIN)
	ln -sf $(BAK) $(patsubst %/cowm,%,$(CURDIR))/cowm/cowm-helper $(BIN)

cowm_uninstall:
	rm $(BIN)/cowm-helper
	-mv $(BIN)/cowm-helper.bak $(BIN)/cowm-helper
	-rmdir $(BIN)
