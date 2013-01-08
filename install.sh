#! /usr/bin/env bash

# Clone Vundle
git clone git://github.com/gmarik/vundle.git bundle/vundle

# Install plugins
vim -u vundle.vim +BundleInstall! +qa

# Symlink .vimrc and .gvimrc
ln -s vim.vim ~/.vimrc
ln -s gvim.vim ~/.gvimrc

# Make special directories
# TODO: Do this in vim.vim
mkdir ~/.vim/.backup
mkdir ~/.vim/.swap
mkdir ~/.vim/.undo
