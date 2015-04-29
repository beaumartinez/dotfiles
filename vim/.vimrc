" A ! means that the command's order (relative to others) is important
" All others can be in arbitrary order

" ! Remove all previous autocommands
autocmd!

" ! Vundle
source ~/.vim/vundle.vim

" Compliment sensible.vim weirdness
set complete+=i
set nrformats+=alpha

" In case sensible.vim gives me a headache, these should revert some weirdness
" set ttimeoutlen=-1
" set noautoread

" Cool git branch name function
function! FormatGitBranch()
    let l:branch=fugitive#head(7)

    if !empty(l:branch)
        return '[' . l:branch . ']'
    else
        return ''
endfunction

" Fly status line
"
" %t: filename tail (basename)
" %F: full filename
" %n: buffer number
" %m: modified
" %l: line number
" %c: column number
" %p: percentage down the file
set statusline=%t\ %<\(%F\)\ \#%n\ %m%{FormatGitBranch()}%=%-14.(%l,\ %c%)\ %3.3p%%

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

" sensible.vim makes listchars useful, so lets see them
set list

" Mappings
" Edit .vimrcs
noremap <leader>v :tab drop ~/.vimrc<cr>
noremap <leader>vg :tab drop ~/.gvimrc<cr>
noremap <leader>vv :tab drop ~/.vim/vundle.vim<cr>

" Fugitive mappings
" Run git command
noremap <leader>g :Git 

" Run git command and open output in a vertical split
noremap <leader>gv :Gvsplit! 

" One keystroke to save, not four
noremap s :w<return>

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

" Show a line at 120 characters
set colorcolumn+=120

" Show keys as they're typed
set showcmd

" Use spaces, not tabs
set expandtab

" Make a tab four spaces
set softtabstop=4
set tabstop=4

" Indent four spaces
set shiftwidth=4

" Switch to already-opened buffers (including tabs)
set switchbuf=usetab

" Store undoes to a file
set undofile

" Store 10000 undoes
set undolevels=10000

" Store backup, swap, and undo files in the .vim folder
set backupdir=~/.vim/.backup
set dir=~/.vim/.swap
set undodir=~/.vim/.undo

" Create backup, swap, and undo directories
for dir in [&backupdir, &dir, &undodir]
    if !isdirectory(dir)
        call mkdir(dir, 'p')
    endif
endfor

" Make backup, swap, and undo directories use full paths
let &backupdir=&backupdir . '//'
let &dir=&dir . '//'
let &undodir=&undodir . '//'

" Plugin authors, don't add mappings automatically
let no_flake8_maps=1

" ag, not ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" Run :SyntasticCheck on open
let g:syntastic_check_on_open = 1

let g:syntastic_python_checkers = ["flake8"]
