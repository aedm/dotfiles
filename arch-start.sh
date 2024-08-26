#!/bin/bash

# Install basics
sudo pacman -Sy --noconfirm which curl eza htop fd neofetch starship bat bubblewrap-suid base-devel

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
. "$HOME/.cargo/env"

# Set up starship
echo 'eval "$(starship init bash)"' >> ~/.bashrc
mkdir ~/.config/
cp starship.toml ~/.config/

echo 'alias ll="exa -alF --group-directories-first --git"' >> ~/.bashrc

# Install Rua
cargo install rua

# Install Python 3.10
# rua install python310

# Install Node.js LTS
# sudo pacman -S nodejs-lts-iron npm

# Install JDK-17
# sudo pacman -S jdk17-openjdk gradle

# Install Docker
# sudo pacman -S docker docker-compose
# sudo systemctl enable docker
# sudo usermod -aG docker aedm