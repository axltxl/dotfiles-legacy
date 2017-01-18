"""""""""""""""""""""""""""""""
" Plugin-specific configuration
"""""""""""""""""""""""""""""""

""""""""""""""""""
" airline
""""""""""""""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tender'

""""""""""""""""""
" gitgutter
""""""""""""""""""
let g:gitgutter_eager = 0
nmap <Leader>ga <Plug>GitGutterStageHunk
nmap <Leader>gu <Plug>GitGutterRevertHunk
nmap <Leader>gp <Plug>GitGutterPrevHunk
nmap <Leader>gn <Plug>GitGutterNextHunk

" Custom fancy signs
let g:gitgutter_sign_added = ""
let g:gitgutter_sign_removed = ""
let g:gitgutter_sign_modified = ""
let g:gitgutter_sign_modified_removed = ""


""""""""""
" Fugitive
""""""""""
nmap <Leader>gc :Gcommit -m "
nmap <Leader>gca :Gcommit -am "
nmap <Leader>gs :Gstatus<CR>

"""""""""
" neomake
"""""""""
nmap <Leader>nn :Neomake<CR>
let g:neomake_open_list = 2


""""""""""""
" vim-rooter
""""""""""""
let g:rooter_disable_map = 1
let g:rooter_patterns = [
    \ '.git/',
    \ '.hg/',
    \ '.classpath',
    \ 'build.gradle',
    \]
