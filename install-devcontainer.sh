#!/bin/bash

mkdir -p /home/$USERNAME/.config
ln -s /home/$USERNAME/.dotfiles/config/fish /home/$USERNAME/.config/
ln -s /home/$USERNAME/.dotfiles/config/starship.toml /home/$USERNAME/.config/
