" A ! means that the command's order (relative to others) is important
" All others can be in arbitrary order

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

" Command-line completion {{{
se wmnu
" }}}

" Don't wrap lines {{{
se nowrap
" }}}

" Don't bell {{{
se vb
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

" Remove intro message {{{
se shm+=I
" }}}

" Show a line at 80 characters {{{
se cc+=80
" }}}

" Show keys as they're typed {{{
se sc
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
se bdir=~/.vim/.backup//
" }}}

" Store swap files in the .vim folder {{{
se dir=~/.vim/.swap//
" }}}

" Switch to already-opened buffers {{{
se swb=usetab
" }}}

" Syntax highlighting {{{
sy on
" }}}

" Undo {{{
" Store undoes to a file {{{
se udf
" }}}

" Store undo files in the .vim folder {{{
se udir=~/.vim/.undo
" }}}

" Store 10000 undoes {{{
se ul=10000
" }}}
" }}}

" vim: fdm=marker fdl=0
