""""""""""""""""""
" airline
""""""""""""""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'


""""""""""""""""""
" Settings for Tagbar
""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
let g:tagbar_vertical = 20

"""""""""""""""""""
" Autocompletion stuff
"""""""""""""""""""
"let delimitMate_expand_cr = 1


""""""""""""""""""
" NERDtree
""""""""""""""""""
"autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primar
map <F3> :NERDTreeToggle<CR>


""""""""""""""""""
" CtrlP
""""""""""""""""""
let g:ctrlp_show_hidden = 1 " Show hidden files


""""""""""""""""""
" easymotion
""""""""""""""""""
"let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" " Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" " `s{char}{label}`
" nmap s <Plug>(easymotion-s)
" " or
" " `s{char}{char}{label}`
" " Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-s2)
"
" " Turn on case insensitive feature
let g:EasyMotion_smartcase = 1
"
" " JK motions: Line motions
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)"
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

""""""""""""""""""
" Using vim-pyenv with jedi-vim
""""""""""""""""""
if jedi#init_python()
    function! s:jedi_auto_force_py_version() abort
        let major_version = pyenv#python#get_internal_major_version()
        call jedi#force_py_version(major_version)
    endfunction
    augroup vim-pyenv-custom-augroup
        autocmd! *
        autocmd User vim-pyenv-activate-post   call s:jedi_auto_force_py_version()
        autocmd User vim-pyenv-deactivate-post call s:jedi_auto_force_py_version()
    augroup END
endif

""""""""""""""""""
" gitgutter
""""""""""""""""""
let g:gitgutter_eager = 0
