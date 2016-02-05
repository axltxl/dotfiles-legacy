"""""""""""""""""""""""""""""""""""""""""""
" Disable ESC key in visual and insert mode
"""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
vnoremap <ESC> <NOP>
inoremap <ESC> <NOP>

"""""""""""""""""""""""""""""""""
" ESC and Ctrl+C are not the same
" Source:  http://unix.stackexchange.com/questions/40086/exiting-block-insert-mode-with-ctrl-c/42419#42419
"""""""""""""""""""""""""""""""""
vnoremap <C-c> <ESC>
inoremap <C-c> <ESC>


"""""""""""""""""""""""""
" Leave Ex mode, for good
"""""""""""""""""""""""""
nnoremap Q <NOP>


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable arrow keys in both visual and insert mode
"""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>


""""""""""""""""""""""""""""""""""""""
" Disable backspace key in insert mode
""""""""""""""""""""""""""""""""""""""
inoremap <BS> <NOP>


""""""""""""""""""""""""""""""""""""""""""""
" Reselect visual block after indent/outdent
""""""""""""""""""""""""""""""""""""""""""""
vnoremap < <gv
vnoremap > >gv


""""""""""""""""
" Map leader key
""""""""""""""""
let mapleader = ";"


""""""""""""""""""""""""""""""""""""""""""""""
" From this point, you can use you leader keys
""""""""""""""""""""""""""""""""""""""""""""""

" Shortcut to rapidly toggle `set list`
map <leader>p :set list!<CR>

" Quicksave
nnoremap <leader>vs :w<CR>

" Reload .vimrc at will
nnoremap <leader>vr :source ~/.vimrc<CR>
"
" Easy splitted window navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" Easy window splitting
map <leader>wv :vsplit<CR>
map <leader>wb :split<CR>

" Reload file
nnoremap <leader>fr :e!<CR>

