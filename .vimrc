" vim: foldmethod=marker foldlevel=0

" A ! means that the command's order (relative to others) is important
" All others can be in arbitrary order

" ! Remove all previous autocommands {{{
autocmd!
" }}}

" ! Vundle {{{
source ~/.vim/vundle.vim
" }}}

" ! Filetype {{{
filetype plugin indent on
" }}}

" Add git information to the status line {{{
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" }}}

" Always show the status line {{{
set laststatus=2
" }}}

" Command-line completion {{{
set wildmenu
" }}}

" Don't wrap lines {{{
set nowrap
" }}}

" Don't bell {{{
set visualbell
" }}}

" Highlight the cursor line {{{
set cursorline
" }}}

" Line numbers {{{
" Uset minimal space {{{
set numberwidth=1
" }}}

" Show relative line numbers {{{
set relativenumber
" }}}
" }}}

" Mappings {{{
" Make leader more accessible {{{
let mapleader=','
noremap \ ,
" }}}

" Edit .vimrc {{{
noremap <leader>v :tab drop ~/.vim/vim.vim<cr>
" }}}

" Fugitive mappings {{{
" Run git command {{{
noremap <leader>g :Git 
" }}}

" Run git command and open output in a vertical split {{{
noremap <leader>gv :Gvsplit! 
" }}}
" }}}

" Remain in visual mode if shifting in visual mode {{{
vnoremap > >gv
vnoremap < <gv
" }}}

" Show help in a vertical split on the right {{{
noremap <leader>h :vert rightb h 
" }}}

" Toggle Gundo {{{
noremap <leader>u :GundoToggle<cr>
" }}}

" Toggle highlighting setarch matches {{{
noremap <leader>s :set hls!<cr>
" }}}
" }}}

" Remove intro message {{{
set shortmess+=I
" }}}

" Show a line at 80 characters {{{
set colorcolumn+=80
" }}}

" Show keys as they're typed {{{
set showcmd
" }}}

" Spaces and tabs {{{
" Uset spaces, not tabs {{{
set expandtab
" }}}

" Make a tab four spaces {{{
set softtabstop=4
set tabstop=4
" }}}

" Indent four spaces {{{
set shiftwidth=4
" }}}
" }}}

" Store backup files in the .vim folder {{{
set backupdir=~/.vim/.backup//
" }}}

" Store swap files in the .vim folder {{{
set dir=~/.vim/.swap//
" }}}

" Switch to already-opened buffers (including tabs) {{{
set switchbuf=usettab
" }}}

" Syntax highlighting {{{
syntax on
" }}}

" Undo {{{
" Store undoes to a file {{{
set undofile
" }}}

" Store undo files in the .vim folder {{{
set undodir=~/.vim/.undo
" }}}

" Store 10000 undoes {{{
set undolevels=10000
" }}}
" }}}

" Create backup, swap, and undo directories {{{
for dir in [&backupdir, &dir, &undodir]
    if !isdirectory(dir)
        mkdir(dir, 'p')
    endif
endfor
" }}}
