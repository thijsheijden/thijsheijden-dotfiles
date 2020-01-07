#! /bin/bash

# create symbolic links to dotfiles in this repo
ln -s vim/.vimrc ~/.vimrc
ln -s bash/.bash_profile ~/.bash_profile
ln -s tmux/.tmux.conf ~/.tmux.conf

# source the symbolically linked files
source ~/.bash_profile

