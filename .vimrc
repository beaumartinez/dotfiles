" Beau's .vimrc

" # Reading protip
"
" Use marker folds:
"
"     :se fdm=marker fdl=0
" 
" Then use:
"
"  - zR|zM to open|close all folds
"  - za to toggle the current fold

" Vundle {{{
filet off

se rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Permanent bundles
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'

filet on
" }}}

" Folding {{{
se fdm=marker
se fdl=0 
" }}}
