SHELL := /bin/bash

BIN := $(HOME)/.local/bin


background_full: unsplash zero-two
background_full_uninstall: unsplash_uninstall zero-two_uninstall


unsplash: .$(BIN)/unsplash

.$(BIN)/unsplash:
	mkdir -p $(BIN)
	ln -sf $(BAK) $(patsubst %/background,%,$(CURDIR))/background/unsplash $(BIN)

unsplash_uninstall:
	rm $(BIN)/unsplash
	-mv $(BIN)/unsplash.bak $(BIN)/unsplash
	-rmdir $(BIN)


zero-two: .$(BIN)/zero-two

.$(BIN)/zero-two:
	mkdir -p $(BIN)
	ln -sf $(BAK) $(patsubst %/background,%,$(CURDIR))/background/zero-two $(BIN)

zero-two_uninstall:
	rm $(BIN)/zero-two
	-mv $(BIN)/zero-two.bak $(BIN)/zero-two
	-rmdir $(BIN)
