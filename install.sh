#!/bin/bash
# Used for Github Codespaces
set -e

echo "Installing ohmyzsh"
git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh /tmp/ohmyzsh
/tmp/ohmyzsh/tools/install.sh --unattended
rm -rf /tmp/ohmyzsh
sudo chsh -s /usr/bin/zsh $USERNAME
cp .zshrc ~

echo "Installing plugins & powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp .p10k.zsh ~

echo "Installing tmux configuration"
git clone --depth=1 https://github.com/gpakosz/.tmux ~/.tmux
ln -sf ~/.tmux/.tmux.conf ~/.tmux.conf
cp .tmux.conf.local ~
