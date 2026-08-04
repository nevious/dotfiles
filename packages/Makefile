.PHONY: install

packages_file_core_extra := packages_core_extra.txt
packages_file_aur := packages_aur.txt
packages_core_extra := $(shell cat $(packages_file_core_extra))
packages_aur := $(shell cat $(packages_file_aur))

install: core_extra
lists: aur_package_file core_extra_package_file
all: aur_package_file core_extra_package_file core_extra aur

core_extra:
	sudo pacman --needed -S $(packages_core_extra)

pikaur:
ifeq ($(shell which pikaur),)
	sudo pacman -S git
	sudo pacman -S --needed base-devel git
	git clone https://aur.archlinux.org/pikaur.git
	cd pikaur
	makepkg -fsri -D pikaur/
endif

aur: pikaur
	pikaur --needed -S $(packages_aur)

aur_package_file: pikaur
	pikaur -Qemtt | awk '{print $$1}' | sort > $(packages_file_aur)

core_extra_package_file: pikaur
	pikaur -Qentt | awk '{print $$1}' | sort > $(packages_file_core_extra)
