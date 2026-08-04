.PHONE: install

SCRIPTS := $(wildcard ./*.sh)
# SCRIPTS can be added to
# SCRIPTS += $(wildcard ./*.py)

install:
	mkdir -p $(BIN_DIR)
	install -t $(BIN_DIR) $(SCRIPTS)
