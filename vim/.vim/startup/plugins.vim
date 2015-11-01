""""""""""""""""""
" airline
""""""""""""""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'
let g:airline_powerline_fonts = 1


""""""""""""""""""
" Settings for Tagbar
""""""""""""""""""""
nmap <Leader>q :TagbarToggle<CR>
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
map <Leader>w :NERDTreeToggle<CR>


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

" keep cursor column when JK motion
let g:EasyMotion_startofline = 0

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
" gitgutter
""""""""""""""""""
let g:gitgutter_eager = 0
let g:gitgutter_highlight_lines = 1
nmap <Leader>ha <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterRevertHunk

""""""""""""""""""
" UltiSnips configuration
""""""""""""""""""
"" Trigger configuration.
let g:UltiSnipsExpandTrigger="<C-L>"

""""""""""""""""""
" YouCompleteMe configuration
""""""""""""""""""
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
