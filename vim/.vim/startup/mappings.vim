" ============ Disable ESC key in visual and insert mode ============
set laststatus=2
vnoremap <esc> <NOP>
inoremap <esc> <NOP>

" ============ Disable arrow keys in both visual and insert mode ============
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" ============ Disable arrow keys in both visual and insert mode ============
nnoremap h <NOP>
nnoremap j <NOP>
nnoremap k <NOP>
nnoremap l <NOP>

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Map leader key
let mapleader = ";"

" ============================================================================
" ============ From this point, you can use you leader keys ==================
" ============================================================================

" Shortcut to rapidly toggle `set list`
map <leader>p :set list!<CR>

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

" Easy window splitting
map <leader>v :vsplit<CR>
map <leader>b :split<CR>

" Reload file
nnoremap <F5> :e!<CR>

