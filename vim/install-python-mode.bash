#!/bin/bash

# Script to install python mode for vim
# See https://github.com/python-mode/python-mode
# Uses manual install instructions as of 2/20/2021


mkidr -r ~/.vim/pack/python-mode/start
cd ~/.vim/pack/python-mode/start
git clone --recurse-submodules https://github.com/python-mode/python-mode.git
cd python-mode
cp -R * ~/.vim

echo "To finish installation, open vim and run ':helptags  ~/.vim/doc/'"
