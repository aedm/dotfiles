#!/bin/bash

sudo apt update
sudo apt install build-essential unzip pkg-config libssl-dev cmake -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

. "$HOME/.cargo/env"
cargo install starship bat fd-find

echo 'eval "$(starship init bash)"' >> ~/.bashrc
eval "$(starship init bash)"

starship preset gruvbox-rainbow -o ~/.config/starship.toml
#starship preset pastel-powerline -o ~/.config/starship.toml

# Java 17
# sudo apt-get install openjdk-17-jdk

# Python 3.10
# sudo apt install software-properties-common
# sudo add-apt-repository ppa:deadsnakes/ppa
# sudo apt update
# sudo apt install python3.10 python3-pip python3.10-venv

