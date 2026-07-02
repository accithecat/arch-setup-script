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
- [cava](https://github.com/karlstav/cava)
- [cmatrix](https://github.com/abishekvashok/cmatrix)
- & and all the requirements needed to install them.

# prerequisites
 - git, base-devel, rust, & yay
   
```bash
sudo pacman -S --needed git base-devel rust
```
```bash
git clone https://aur.archlinux.org/yay.git
```
```bash
cd yay && makepkg -si
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
