#!/usr/bin/env bash

set -e

echo "Installing pacman packages..."
sudo pacman -S --needed \
  ttf-0xproto-nerd \
  ffmpeg \
  7zip \
  jq \
  poppler \
  fd \
  ripgrep \
  fzf \
  zoxide \
  resvg \
  imagemagick \
  yazi \
  nvim \
  lazygit \
  nodejs \
  npm \
  telegram-desktop \
  discord \
  sddm \
  libreoffice-still \
  cava \
  cmatrix

echo "Enabling NetworkManager..."
sudo systemctl enable --now NetworkManager.service

echo "Finishing pacman packages..."
sudo pacman -S --needed proton-vpn-cli

echo "Installing yay packages..."
yay -S --needed \
  sidra-bin \
  librepods

echo "Installing cargo packages..."
cargo binstall tree-sitter-cli

echo "Installing lazyVim..."
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo "Installing SilentSDDM..."
git clone -b main --depth=1 https://github.com/uiriansan/SilentSDDM
(
  cd SilentSDDM
  ./install.sh
)

echo "Enabling SDDM..."
sudo systemctl enable sddm.service

echo
echo "Installation complete!"
sudo reboot
