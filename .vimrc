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

" Command-line completion {{{
se wmnu
" }}}

" Filetype {{{
filet plugin indent on
" }}}

" Folding {{{
se fdm=marker
se fdl=0 
" }}}

" Line numbers {{{
" Use minimal space
se nuw=1
" Show relative line numbers
se rnu
" }}}

" Mappings {{{
" Make leader more accessible
let mapleader=','
no \ ,

" Show help in a vertical split on the right
no <leader>h :vert rightb h 
" }}}
