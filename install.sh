echo 'Cloning Vundle...'
git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo 'Installing plugins...'
vim -u ~/.vim/vundle.vim +BundleInstall +q +q

echo 'Symlinking .vimrc and .gvimrc...'
ln -s ~/.vim/vim.vim ~/.vimrc
ln -s ~/.vim/gvim.vim ~/.gvimrc
