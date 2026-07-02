# arch-setup-script
A lil script i made to download all the stuff i personally use in case i need to redownload my os for some reason

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

# Download and Running instrucctions

```bash
git clone https://github.com/accithecat/arch-setup-script
```
```bash
cd arch-setup-script
```
```bash
./script.sh
```
