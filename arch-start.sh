#!/bin/bash

# Install basics
sudo pacman -Sy --noconfirm which curl eza htop fd neofetch rust starship bat

# Set up starship
echo 'eval "$(starship init bash)"' >> ~/.bashrc
cp starship.toml ~/.config/

echo 'alias ll="exa -alF --group-directories-first --git"' >> ~/.bashrc
