.PHONY: all setup link update init
DOTPATH=${HOME}/dotfiles

all: setup

setup: update link init

update:
	git pull origin master
	git submodule init
	git submodule update
	git submodule foreach git pull origin master

link:
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/bin/link.sh

init:
	@DOTPATH=$(DOTPATH) bash $(DOTPATH)/bin/init.sh
