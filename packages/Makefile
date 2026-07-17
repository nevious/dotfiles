.PHONY: install base

packages_file := packages.txt
packages := $(shell cat $(packages_file))

default: packages

install:
ifeq ($(shell which pikaur),)
	cd /tmp/
	pacman -S git
	sudo pacman -S --needed base-devel git
	git clone https://aur.archlinux.org/pikaur.git
	cd pikaur
	makepkg -fsri
endif
	pikaur -S $(packages)
