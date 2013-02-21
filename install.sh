#! /usr/bin/env bash

# Clone Vundle
git clone git://github.com/gmarik/vundle.git bundle/vundle

# Install plugins
vim -u vundle.vim +BundleInstall! +qa

# Symlink .vimrc and .gvimrc
ln -s .vimrc ~
ln -s .gvimrc ~

# Make special directories
# TODO: Do this in .vimrc
mkdir ~/.vim/.backup
mkdir ~/.vim/.swap
mkdir ~/.vim/.undo
