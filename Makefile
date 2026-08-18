
export CONFIG_DIR = $(HOME)/.config
export BIN_DIR = $(HOME)/.local/bin

.PHONY: default all packages xorg alacritty bash bin dunst gtk3 i3 i3blocks nvim picom rofi zsh profile

default: xorg alacritty bin dunst gtk3 i3 i3blocks nvim picom rofi zsh p10k profile
all: packages xorg alacritty bash bin dunst gtk3 i3 i3blocks nvim picom rofi zsh profile

packages:
	$(MAKE) -C packages install

xorg:
	$(MAKE) -C X11 install

alacritty:
	mkdir -p $(CONFIG_DIR)/alacritty
	stow -t $(CONFIG_DIR)/alacritty alacritty

bash:
	echo "Target Pending: $@"

bin:
	$(MAKE) -C bin install

dunst:
	mkdir -p $(CONFIG_DIR)/dunst
	stow --ignore icons -t $(CONFIG_DIR)/dunst/ dunst
	stow --ignore dunstrc -t $(CONFIG_DIR)/dunst/ dunst

gtk3:
	mkdir -p $(CONFIG_DIR)/gtk-3.0
	mkdir -p $(HOME)/.themes
	stow --ignore themes -t $(CONFIG_DIR)/gtk-3.0 gtk-3
	stow --ignore settings.ini -t $(HOME)/.themes -d gtk-3 themes

i3:
	mkdir -p $(CONFIG_DIR)/i3
	stow -t $(CONFIG_DIR)/i3 i3

i3blocks:
	mkdir -p $(CONFIG_DIR)/i3blocks
	stow --ignore blocks -t $(CONFIG_DIR)/i3blocks i3blocks
	stow --ignore config -t $(BIN_DIR) -d i3blocks blocks

nvim:
	mkdir -p $(CONFIG_DIR)/nvim
	stow -t $(CONFIG_DIR)/nvim nvim

picom:
	mkdir -p $(CONFIG_DIR)/picom
	stow -t $(CONFIG_DIR)/picom picom

rofi:
	mkdir -p $(CONFIG_DIR)/rofi
	stow -t $(CONFIG_DIR)/rofi rofi

zsh:
	stow -t $(HOME) --dotfiles zsh

p10k:
	stow -t $(HOME) --dotfiles p10k.zsh

profile:
	stow -t $(HOME) --dotfiles profile
