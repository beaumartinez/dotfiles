echo Installing Beau\'s Vim config...

if [ -e ~/.vim -o -e ~/.vimrc -o -e ~/.gvimrc ]; then
    DATE=$(date +%Y-%m-%d)
    VIM_BACKUP_PATH=~/.vim-$DATE

    echo Existing Vim config found
    echo Backing-up existing Vim config to $VIM_BACKUP_PATH...

    if [ -e $VIM_BACKUP_PATH ]; then
        echo Error: $VIM_BACKUP_PATH already exists
        echo We couldn\'t back up your existing Vim config—do it yourself

        exit 1
    fi

    mkdir $VIM_BACKUP_PATH

    mv ~/.vim $VIM_BACKUP_PATH
    mv ~/.vimrc $VIM_BACKUP_PATH
    mv ~/.gvimrc $VIM_BACKUP_PATH
fi

echo Cloning Beau\'s Vim config...
git clone git://github.com/beaumartinez/vim-config.git ~/.vim/

echo Cloning Vundle...
git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

echo Installing plugins...
gvim -u ~/.vim/vundle.vim +BundleInstall +qa

echo Symlinking .vimrc and .gvimrc...
ln -s ~/.vim/vim.vim ~/.vimrc
ln -s ~/.vim/gvim.vim ~/.gvimrc

echo Making special directories...
mkdir ~/.vim/backup
mkdir ~/.vim/swap
mkdir ~/.vim/undo

echo Done!
