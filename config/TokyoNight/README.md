# Packages

```sh
paru -S alacritty polybar rofi xdg-user-dirs nautilus xorg pavucontrol blueberry xfce4-power-manager feh lxappearance papirus-icon-theme file-roller gtk-engines gtk-engine-murrine neofetch imagemagick parcellite xclip maim gpick curl jq tint2 moreutils recode dunst python-xdg redshift mate-polkit xfce4-settings mpv yaru-sound-theme fish alsa-utils slim xorg-xinit brightnessctl acpi mugshot playerctl python-pytz wmctrl i3lock-color inter-font networkmanager-dmenu-git bsp-layout zscroll noise-suppression-for-voice starship system76-power lsof gamemode lib32-gamemode xdo bluez bluez-utils bluez-libs bluez-tools
```

# EWW (Testar)

Elkowar's wacky widgets are the main widgets that we are gonna use in our system. It is a very essential dependency that you need. First you need the nightly version of rust and also GTK3. A speedy way would be to directly install the binary package of rust nightly from the AUR using your favorite AUR helper:

```sh
paru -S rust-nightly-bin gtk3
```

Then we just need to run a few commands assuming you have git installed:

```sh
cd ~/Downloads
git clone https://github.com/elkowar/eww.git
cd eww
cargo build --release -j $(nproc)
cd target/release
sudo mv eww /usr/bin/eww
```

That installs eww to our root filesystem, which is then sourced from the $PATH.

# Spicetify

Since we copied the dotfiles, we can apply the spicetify theme now.
First, install spicetify using:
```bash
yay -S spicetify-cli-git
```

Then, we need to give read and write access to our spotify folder for modifications:
```bash
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R
```

After that we just need to run:

```bash
spicetify config current_theme Ziro
spicetify config color_scheme tokyonight
spicetify config extensions adblock.js
spicetify backup apply
```
This would install the spicetify theme to your Spotify.

# GTK Theme

To match with the current colorscheme, we are using the <a href="https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme">Tokyo Night GTK Theme</a>

```bash
cd ~/Downloads
git clone https://github.com/Fausto-Korpsvart/Tokyo-Night-GTK-Theme.git
cd Tokyo-Night-GTK-Theme/
mv themes/Tokyonight-Dark-BL /usr/share/themes/
```
And that's it!

# Visual Studio Code

To get a consistent look for visual studio code, you can install the <b>Tokyo Night</b> Theme from the visual studio code marketplace.

[Click Here to access the theme link](https://marketplace.visualstudio.com/items?itemName=enkia.tokyo-night)
