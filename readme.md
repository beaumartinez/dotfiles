# Beau's Vim config

This is my Vim config. I use [Vundle] to manage [plugins].

My `.vimrc` is [`vim.vim`] and my `.gvimrc` is [`gvim.vim`].

[`gvim.vim`]: http://github.com/beaumartinez/.vim/blob/master/gvim.vim
[`vim.vim`]: http://github.com/beaumartinez/.vim/blob/master/vim.vim
[Vundle]: http://github.com/gmarik/vundle
[plugins]: http://github.com/beaumartinez/.vim/blob/master/vundle.vim

# Installation

Make sure `~/.vim` doesn't exist or is empty and `~/.vimrc` and `~/.gvimrc` don't exist.

If they do:

    mv ~/.vim ~/.old-vim; mv ~/.vimrc ~/.old-vimrc; mv ~/.gvimrc ~/.old-gvimrc

## All in one command

    git clone git://github.com/beaumartinez/.vim.git ~/.vim && source ~/.vim/install.sh

## Step by step

1. Clone the repo:

        git clone git://github.com/beaumartinez/.vim.git ~/.vim

2. Run [the install script]:

[the install script]: http://github.com/beaumartinez/.vim/blob/master/install.sh

        source ~/.vim/install.sh
