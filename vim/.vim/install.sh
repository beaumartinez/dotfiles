#! /usr/bin/env bash

set -e

# Clone Vundle
git clone git://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install plugins
vim -u ~/.vim/vundle.vim +PluginUpdate +qa
