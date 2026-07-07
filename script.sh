#!/usr/bin/env bash

set -e

echo "Acci's Arch Setup Script v1.4"
echo

echo "Installing prerequisites..."
sudo pacman -S --needed \
  base-devel \
  git \
  rust

cargo install cargo-binstall

git clone https://aur.archlinux.org/yay.git

(
  cd yay
  makepkg -si --noconfirm
)

echo "Installing desktop manager"
curl -fsSL https://install.danklinux.com | sh

echo "Installing pacman packages..."
sudo pacman -S --needed --noconfirm \
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
  networkmanager \
  python-pywal \
  wf-recorder \
  cmatrix

echo "Enabling NetworkManager..."
sudo systemctl enable --now NetworkManager.service

echo "Finishing pacman packages..."
sudo pacman -S --needed --noconfirm proton-vpn-cli

echo "Installing yay packages..."
yay -S --needed --noconfirm \
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

rm -rf yay
rm -rf SilentSDDM

echo
echo "Installation complete! Rebooting in 10 seconds..."
sleep 10
sudo reboot
