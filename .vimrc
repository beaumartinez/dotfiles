" Beau's .vimrc

" Ordered specifically (relative to each other and all others) {{{

" Vundle {{{
so ~/.vim/vundle.vim
" }}}

" Filetype {{{
filet plugin indent on
" }}}

" }}}

" Ordered arbitrarily {{{

" Command-line completion {{{
se wmnu
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

" Remain in visual mode if shifting in visual mode {{{
vn > >gv
vn < <gv
" }}}

" Show help in a vertical split on the right {{{
no <leader>h :vert rightb h 
" }}}
" }}}

" }}}

" vim: fdm=marker fdl=0
