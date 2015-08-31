" ============ My super cool mappings ================= "

" Habit breaking
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
ino <Up> <NOP>
ino <Down> <NOP>
ino <Left> <NOP>
ino <Right> <NOP>




" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Easy splitted window navigation
nnoremap <C-h>  <C-w>h
nnoremap <C-j>  <C-w>j
nnoremap <C-k>  <C-w>k
nnoremap <C-l>  <C-w>l

" Map leader key
let mapleader = "<"


" ============================================================================
" ============ From this point, you can use you leader keys ==================
" ============================================================================

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Swap line up/down
nnoremap <leader>j ddjP
nnoremap <leader>k ddkP

" Quicksave
nnoremap <leader>s :w<CR>

" Duplicate line
nnoremap <leader>d yyp

" Reload .vimrc at will
nnoremap <leader>t :source ~/.vimrc<CR>

