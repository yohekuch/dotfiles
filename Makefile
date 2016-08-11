.PHONY: all setup deploy install copy link init
DOTPATH=${HOME}/dotfiles


all: setup

setup:
	@echo "setup"

install:
	@echo "install"

deploy:
	@echo "deploy"
	@bash $(DOTPATH)/deploy/deploy.sh

copy:
	@echo "copy"

link:
	@echo "link"

update:
	@echo "update"

init:
	@echo "init"

