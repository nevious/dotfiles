
TARGET_DIR := /etc/X11/xorg.conf.d
SRC_DIR := ./xorg.conf.d
CONFIG_FILES := $(wildcard $(SRC_DIR)/*.conf)

.PHONY: install

install:
	sudo mkdir -p $(TARGET_DIR)
	sudo install -t $(TARGET_DIR) $(CONFIG_FILES)
