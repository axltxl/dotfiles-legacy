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
let mapleader = "\<Space>"


""""""""""""""""""""""""""""""""""""""""""""""
" From this point, you can use you leader keys
""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""
" Vim-related mappings
""""""""""""""""""""""

" Shortcut to rapidly toggle `set list`
map <Leader>vl :set list!<CR>

" Quicksave
nnoremap <Leader>vs :w<CR>

" Reload .vimrc at will
nnoremap <Leader>vr :source ~/.vimrc<CR>
"
" Easy splitted window navigation
map <Leader>h :wincmd h<CR>
map <Leader>j :wincmd j<CR>
map <Leader>k :wincmd k<CR>
map <Leader>l :wincmd l<CR>

" Easy window splitting
map <leader>wv :vsplit<CR>
map <leader>wb :split<CR>

" Reload file
nnoremap <leader>fr :e!<CR>

