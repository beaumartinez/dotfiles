VIM_CONFIG_DIRECTORY=~/Documents/Code/vim-config

echo Installing Beau\'s Vim config...
echo Cloning Beau\'s Vim config...
git clone git://github.com/beaumartinez/vim-config.git $VIM_CONFIG_DIRECTORY

echo Cloning Vundle...
git clone git://github.com/gmarik/vundle.git $VIM_CONFIG_DIRECTORY/bundle/vundle

echo Installing plugins...
vim -u $VIM_CONFIG_DIRECTORY/vundle.vim +BundleInstall +qa

echo Symlinking Vim config...
ln -s $VIM_CONFIG_DIRECTORY ~/.vim

echo Symlinking .vimrc and .gvimrc...
ln -s $VIM_CONFIG_DIRECTORY/vim.vim ~/.vimrc
ln -s $VIM_CONFIG_DIRECTORY/gvim.vim ~/.gvimrc

echo Making special directories...
mkdir ~/.vim/.backup
mkdir ~/.vim/.swap
mkdir ~/.vim/.undo

echo Done!
