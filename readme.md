# Dotfiles

    brew install stow
    git clone https://github.com/beaumartinez/dotfiles ~/dotfiles
    pushd .
    cd ~/dotfiles
    stow bash git vim -t ~
    popd
    ~/.vim/install.sh
