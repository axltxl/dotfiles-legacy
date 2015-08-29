""""""""""""""""""
" airline
""""""""""""""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'badwolf'
         
         
""""""""""""""""""
" Syntastic settings
""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


""""""""""""""""""
" Settings for Tagbar
""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>

""""""""""""""""""
" Whitespace and tabs
""""""""""""""""""""
"set list lcs=trail:·,tab:»·l

"""""""""""""""""""
" Autocompletion stuff
"""""""""""""""""""
"let delimitMate_expand_cr = 1

" NERDtree
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primar
map <F3> :NERDTreeToggle<CR>
 
