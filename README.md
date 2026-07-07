# arch-setup-script
A lil script i made to download all the stuff i personally use in case i need to redownload my os for some reason

# contents
- [yazi](https://yazi-rs.github.io/)
- [neovim](https://neovim.io/)
- [lazyvim](https://www.lazyvim.org/)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [sidra](https://github.com/wimpysworld/sidra)
- telegram
- discord
- [librepods](https://github.com/librepods-org/librepods)
- [sddm](https://github.com/sddm/sddm)
- [silent-sddm](https://github.com/uiriansan/SilentSDDM)
- [proton-vpn-cli](https://github.com/ProtonVPN/proton-vpn-cli)
- [libreoffice-still](https://libreoffice.org/)
- [pywal](https://github.com/dylanaraps/pywal)
- [wf-recorder](https://github.com/ammen99/wf-recorder)
- [cava](https://github.com/karlstav/cava)
- [cmatrix](https://github.com/abishekvashok/cmatrix)
- & and all the requirements needed to install them.

# WARNING ⚠️
just in case anybody uses this script, it is VERY recommended to use it on a fresh install of arch linux or any arch-based os

# prerequisites
 - git, base-devel, rust, cargo-binstall & yay
   
```bash
sudo pacman -S --needed git base-devel rust
```
```bash
git clone https://aur.archlinux.org/yay.git
```
```bash
cd yay && makepkg -si
```
```bash
cargo install cargo-binstall
```

# download and running

```bash
git clone https://github.com/accithecat/arch-setup-script
```
```bash
cd arch-setup-script
```
```bash
bash script.sh
```
