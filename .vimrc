" Beau's .vimrc

" Ordered specifically (relative to each other and all others) {{{

" Remove all previous autocommands {{{
au!
" }}}

" Vundle {{{
so ~/.vim/vundle.vim
" }}}

" Filetype {{{
filet plugin indent on
" }}}

" }}}

" Ordered arbitrarily {{{

" Always show the status line {{{
se ls=2
" }}}

" Command-line completion {{{
se wmnu
" }}}

" Disable modelines except in Vim files {{{
" Disable modelines {{{
se noml
" }}}

" Enable modelines in Vim files {{{
au FileType vim se ml
" }}}
" }}}

" Line numbers {{{
" Use minimal space {{{
se nuw=1
" }}}

" Show relative line numbers {{{
se rnu
" }}}
" }}}

" Mappings {{{
" Make leader more accessible {{{
let mapleader=','
no \ ,
" }}}

" Edit .vimrc {{{
no <leader>v :tab drop ~/.vim/.vimrc<cr>
" }}}

" Remain in visual mode if shifting in visual mode {{{
vn > >gv
vn < <gv
" }}}

" Show help in a vertical split on the right {{{
no <leader>h :vert rightb h 
" }}}
" }}}

" Match the current working directory to the current buffer {{{
se acd
" }}}

" }}}

" vim: fdm=marker fdl=1
