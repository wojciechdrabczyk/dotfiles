#!/usr/bin/env bash
sudo apt-get update -y
sudo apt-get install -y stow zsh git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
./configure-git.sh
./configure-ssh.sh
stow .
