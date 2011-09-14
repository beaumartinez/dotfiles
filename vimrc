" Beau's .vimrc

" Important commands—we run these first (and in a specific order) {{{
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

" Add git information to the status line {{{
se stl=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" }}}

" Always show the status line {{{
se ls=2
" }}}

" Highlight search matches {{{
se hls
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

" Highlight the cursor line {{{
se cul
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

" Edit in a tab {{{
no <leader>t :tab drop 
" }}}

" Edit .vimrc {{{
no <leader>v :tab drop ~/.vim/vimrc<cr>
" }}}

" Remain in visual mode if shifting in visual mode {{{
vn > >gv
vn < <gv
" }}}

" Show help in a vertical split on the right {{{
no <leader>h :vert rightb h 
" }}}

" Toggle highlighting search matches {{{
no <leader>s :se hls!<cr>
" }}}
" }}}

" Match the current working directory to the current buffer {{{
se acd
" }}}

" Remove intro message {{{
se shm+=I
" }}}

" Show a line at 80 characters {{{
se cc+=80
" }}}

" Show keys as they're typed {{{
se sc
" }}}

" Source this file on write {{{
au BufWritePost $MYVIMRC :so $MYVIMRC
" }}}

" Spaces and tabs {{{
" Use spaces, not tabs {{{
se et
" }}}

" Make a tab four spaces {{{
se sts=4
se ts=4
" }}}

" Indent four spaces {{{
se sw=4
" }}}
" }}}

" Syntax highlighting {{{
sy on
" }}}

" vim: fdm=marker fdl=0