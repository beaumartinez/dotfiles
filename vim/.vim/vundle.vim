set nocompatible
filetype off

" Vundle commands
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'Lokaltog/vim-easymotion'
Plugin 'beaumartinez/vim-colors-solarized'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gmarik/Vundle.vim'
Plugin 'nvie/vim-flake8'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'

call vundle#end()

filetype on
