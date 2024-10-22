#!/usr/bin/env bash
set -e

echo "Setting up zsh"
git clone --depth=1 https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh
REMOTE=https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh ohmyzsh/tools/install.sh --unattended
rm -rf ohmyzsh
sudo chsh -s /usr/bin/zsh $(whoami)
cp .zshrc ~

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
cp .p10k.zsh ~

echo "Setting up tmux"
git clone --depth=1 https://github.com/gpakosz/.tmux ~/.tmux
ln -sf ~/.tmux/.tmux.conf ~/.tmux.conf
cp .tmux.conf.local ~
