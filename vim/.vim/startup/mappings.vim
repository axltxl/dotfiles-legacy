" ============ My super cool mappings ================= "

" Habit breaking
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Map leader key
let mapleader = "\\"

" ============================================================================
" ============ From this point, you can use you leader keys ==================
" ============================================================================

" Shortcut to rapidly toggle `set list`
map <leader>p :set list!<CR>

" Swap line up/down
nnoremap <leader>J ddjP
nnoremap <leader>K ddkP

" Quicksave
nnoremap <leader>s :w<CR>

" Duplicate line
nnoremap <leader>d yyp

" Reload .vimrc at will
nnoremap <leader>t :source ~/.vimrc<CR>
"
" Easy splitted window navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" Reload file
nnoremap <F5> :e!<CR>

