" Beau's .vimrc

" A ! means that the command's order (relative to the others) is important.

" ! Remove all previous autocommands {{{
au!
" }}}

" ! Vundle {{{
so ~/.vim/vundle.vim
" }}}

" ! Filetype {{{
filet plugin indent on
" }}}

" Add git information to the status line {{{
se stl=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" }}}

" Always show the status line {{{
se ls=2
" }}}

" Always show the tab line {{{
se stal=2
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

" Don't unload buffers {{{
se hid
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
no <leader>v :tab drop ~/.vim/vim.vim<cr>
" }}}

" Fugitive mappings {{{
" Run git command {{{
no <leader>g :Git 
" }}}

" Run git command and open output in a vertical split {{{
no <leader>gv :Gvsplit! 
" }}}
" }}}

" Remain in visual mode if shifting in visual mode {{{
vn > >gv
vn < <gv
" }}}

" Show help in a vertical split on the right {{{
no <leader>h :vert rightb h 
" }}}

" Toggle Gundo {{{
no <leader>u :GundoToggle<cr>
" }}}

" Toggle highlighting search matches {{{
no <leader>s :se hls!<cr>
" }}}
" }}}

" Match the current working directory to the current buffer {{{
se acd
" }}}

" Never show the tab line {{{
se stal=0
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

" Source .vimrc on write {{{
au BufWritePost $MYVIMRC :so $MYVIMRC
au BufWritePost ~/.vim/vim.vim :so ~/.vim/vim.vim
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

" Store backup files in the .vim folder {{{
let &bdir = $HOME . '/.vim/.backup//'
" }}}

" Store swap files in the .vim folder {{{
let &dir = $HOME . '/.vim/.swap//'
" }}}

" Syntax highlighting {{{
sy on
" }}}

" Undo {{{
" Store undoes to a file {{{
se udf
" }}}

" Store undo files in the .vim folder {{{
let &udir = $HOME . '/.vim/.undo'
" }}}

" Store 10000 undoes {{{
se ul=10000
" }}}
" }}}

" vim: fdm=marker fdl=0
