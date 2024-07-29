#!/bin/bash
# Used for Github Codespaces
set -e

[ $UID -eq 0 ] && exec sudo -u codespace $0

echo "Setting up zsh"
sudo chsh -s /usr/bin/zsh $(whoami)
cp .zshrc ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp .p10k.zsh ~

echo "Installing tmux configuration"
sudo apt-get update
sudo env DEBIAN_FRONTEND=noninteractive apt-get install -y tmux perl
git clone --depth=1 https://github.com/gpakosz/.tmux ~/.tmux
ln -sf ~/.tmux/.tmux.conf ~/.tmux.conf
cp .tmux.conf.local ~
