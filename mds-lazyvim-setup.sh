#!/bin/bash

start_dir=$(pwd)

# Erase nvim directories if they are present
rm -fr ~/.config/nvim ~/.cache/nvim ~/.local/{share,state}/nvim

git clone git@github.com:micdestefano/lazyvim-starter.git ~/.config/nvim
cd ~/.config/nvim
git remote add upstream git@github.com:LazyVim/starter.git
git fetch upstream
git branch -u upstream/main main
git config branch.main.pushRemote origin
git switch mds-lazyvim

cd $start_dir
