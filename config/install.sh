#!/usr/bin/env bash
sudo apt-get update -y
sudo apt-get install -y stow zsh git curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
./config/configure-git.sh
./config/configure-ssh.sh
rm ~/.zshrc
stow .
chsh -s $(which zsh)
