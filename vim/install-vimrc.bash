#!/bin/bash

# Installs colorscheme
mkdir -p ~/.vim/colors
cp colors/calen_colors.vim ~/.vim/colors/calen_colors.vim
cp colors/molokai.vim ~/.vim/colors/molokai.vim

# Installs the vimrc file in the home directory
cp .vimrc ~/.vimrc
