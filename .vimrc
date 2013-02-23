" A ! means that the command's order (relative to others) is important
" All others can be in arbitrary order

" ! Remove all previous autocommands
autocmd!

" ! Vundle
source ~/.vim/vundle.vim

" ! Filetype
filetype plugin indent on

" Cool git branch name function
function! FormatGitBranch()
    let l:branch=fugitive#head(7)

    if !empty(l:branch)
        return '[' . l:branch . ']'
    else
        return ''
endfunction

" Add git information to the status line
set statusline=%t\ %<\(%F\)\ \#%n\ %m%{FormatGitBranch()}%=\ %l\ %3.3p%%

" Always show the status line
set laststatus=2

" Command-line completion
set wildmenu

" Don't wrap lines
set nowrap

" Don't bell
set visualbell

" Highlight the cursor line
set cursorline

" Line numbers
" Use minimal space
set numberwidth=1

" Show relative line numbers
set relativenumber

" Mappings
" Edit .vimrcs
noremap <leader>v :tab drop ~/.vim/.vimrc<cr>
noremap <leader>vg :tab drop ~/.vim/.gvimrc<cr>
noremap <leader>vv :tab drop ~/.vim/vundle.vim<cr>

" Fugitive mappings
" Run git command
noremap <leader>g :Git 

" Run git command and open output in a vertical split
noremap <leader>gv :Gvsplit! 

" Remain in visual mode if shifting in visual mode
vnoremap > >gv
vnoremap < <gv

" Show help in a vertical split on the right
noremap <leader>h :vert rightb h 

" Toggle Gundo
noremap <leader>u :GundoToggle<cr>

" Remove intro message
set shortmess+=I

" Show a line at 80 characters
set colorcolumn+=80

" Show keys as they're typed
set showcmd

" Use spaces, not tabs
set expandtab

" Make a tab four spaces
set softtabstop=4
set tabstop=4

" Indent four spaces
set shiftwidth=4

" Store backup files in the .vim folder
set backupdir=~/.vim/.backup//

" Store swap files in the .vim folder
set dir=~/.vim/.swap//

" Switch to already-opened buffers (including tabs)
set switchbuf=usetab

" Syntax highlighting
syntax on

" Store undoes to a file
set undofile

" Store undo files in the .vim folder
set undodir=~/.vim/.undo

" Store 10000 undoes
set undolevels=10000

" Create backup, swap, and undo directories
for dir in [&backupdir, &dir, &undodir]
    if !isdirectory(dir)
        mkdir(dir, 'p')
    endif
endfor
