"""""""""""""""""""""""""""""""""""""""""""
" Disable ESC key in visual and insert mode
"""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
vnoremap <ESC> <NOP>
inoremap <ESC> <NOP>
cnoremap <ESC> <NOP>

"""""""""""""""""""""""""""""""""
" ESC and Ctrl+C are not the same
" Source:  http://unix.stackexchange.com/questions/40086/exiting-block-insert-mode-with-ctrl-c/42419#42419
"""""""""""""""""""""""""""""""""
vnoremap <C-c> <ESC>
inoremap <C-c> <ESC>
cnoremap <C-c> <ESC>


"""""""""""""""""""""""""
" Leave Ex mode, for good
"""""""""""""""""""""""""
nnoremap Q <NOP>


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable arrow keys in both visual and insert mode
"""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Up>    <NOP>
nnoremap <Down>  <NOP>
nnoremap <Left>  <NOP>
nnoremap <Right> <NOP>

inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

cnoremap <Up>    <NOP>
cnoremap <Down>  <NOP>
cnoremap <Left>  <NOP>
cnoremap <Right> <NOP>


""""""""""""""""""""""""""""""""""""""
" Disable backspace key in all modes
""""""""""""""""""""""""""""""""""""""
inoremap <BS> <NOP>
vnoremap <BS> <NOP>
nnoremap <BS> <NOP>
cnoremap <BS> <NOP>


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

" Reload .vimrc at will
nnoremap <Leader>vr :source ~/.vimrc<CR>
"
" Easy splitted window navigation
map <Leader>wh :wincmd h<CR>
map <Leader>wj :wincmd j<CR>
map <Leader>wk :wincmd k<CR>
map <Leader>wk :wincmd l<CR>

" Easy window splitting
map <Leader>wv :vsplit<CR>
map <Leader>ws :split<CR>

" Reload file
nnoremap <Leader>fr :e!<CR>

" Quicksave
nnoremap <Leader>fs :w<CR>
