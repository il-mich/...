SHELL := /bin/bash


bash_full: inputrc profile
bash_full_uninstall: inputrc_uninstall profile_uninstall


inputrc: .$(HOME)/.inputrc

.$(HOME)/.inputrc:
	ln -sf $(BAK) $(patsubst %/bash,%,$(CURDIR))/bash/inputrc $(HOME)/.inputrc

inputrc_uninstall:
	rm $(HOME)/.inputrc
	-mv $(HOME)/.inputrc.bak $(HOME)/.inputrc


profile: .$(HOME)/.profile

.$(HOME)/.profile:
	ln -sf $(BAK) $(patsubst %/bash,%,$(CURDIR))/bash/profile $(HOME)/.profile

profile_uninstall:
	rm $(HOME)/.profile
	-mv $(HOME)/.profile.bak $(HOME)/.profile
