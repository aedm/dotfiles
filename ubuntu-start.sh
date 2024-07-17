#!/bin/bash

sudo apt update
sudo apt install build-essential unzip pkg-config libssl-dev cmake -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

cargo install starship bat fd

echo 'eval "$(starship init bash)"' >> ~/.bashrc
eval "$(starship init bash)"

starship preset gruvbox-rainbow -o ~/.config/starship.toml
#starship preset pastel-powerline -o ~/.config/starship.toml
