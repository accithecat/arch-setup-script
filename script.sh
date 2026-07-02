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
  telegram-desktop \
  discord \
  sddm \
  cava \
  cmatrix

echo "Enabling and Starting services..."
sudo systemctl enable --now \
  sddm.service \
  NetworkManager.service

echo "Finishing pacman packages..."
sudo pacman -S --needed proton-vpn-cli

echo "Installing yay packages..."
yay -S --needed \
  sidra-bin \
  librepods-git

echo "Installing cargo packages..."
cargo install cargo-binstall
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
