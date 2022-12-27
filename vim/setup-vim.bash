#!/bin/bash

# Erase ~/.vim

echo "This script will ERASE ~/.vim"

while true
do
    read -r -p "Are You Sure? [Y/n] " input

    case $input in
        [yY][eE][sS]|[yY])
    echo "Yes"
    break
    ;;
        [nN][oO]|[nN])
    echo "No"
    break
    ;;
    *)
    echo "Invalid input..."
    ;;
    esac
done

rm -rf ~/.vim
rm ~/.vimrc
mkdir ~/.vim

# Installs colorscheme
mkdir -p ~/.vim/colors
cp colors/calen_colors.vim ~/.vim/colors/calen_colors.vim
cp colors/molokai.vim ~/.vim/colors/molokai.vim

# Installs the vimrc file in the home directory
cp .vimrc ~/.vimrc

# Install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim --not-a-term +PluginInstall +qall

# Install YCM
sudo apt install -y build-essential cmake vim-nox python3-dev
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clangd-completer

# Script to install python mode for vim
# See https://github.com/python-mode/python-mode
# Uses manual install instructions as of 2/20/2021
# mkdir -p ~/.vim/pack/python-mode/start
# cd ~/.vim/pack/python-mode/start
# git clone --recurse-submodules https://github.com/python-mode/python-mode.git
# cd python-mode
# cp -R * ~/.vim

echo "To finish installation, open vim and run the following"
echo ":helptags  ~/.vim/doc/"
