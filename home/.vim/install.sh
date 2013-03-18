#! /usr/bin/env bash

set -e

# Clone Vundle
git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# Install plugins
vim -u ~/.vim/vundle.vim +BundleInstall! +qa
