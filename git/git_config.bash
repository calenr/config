#!/bin/bash
set -x

git config --global core.editor vim
git config --global core.excludesfile ./.gitignore_global

git config --global core.autocrlf input # Linux
# git config --global core.autocrlf true # Windows

set +x
echo Have you run?
echo     git config --global user.email "you@example.com"
echo     git config --global user.name "Your Name"
