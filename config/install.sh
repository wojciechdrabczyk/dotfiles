#!/usr/bin/env bash
sudo apt-get update -y
sudo apt-get install -y stow zsh git curl tmux zsh-syntax-highlighting
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
./config/configure-git.sh
./config/configure-ssh.sh
rm ~/.zshrc
stow .
chsh -s $(which zsh)
