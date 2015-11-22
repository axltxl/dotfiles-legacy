""""""""""""""""""
" airline
""""""""""""""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'
let g:airline_powerline_fonts = 1


""""""""""""""""""
" Tagbar
""""""""""""""""""""
nmap <Leader>q :TagbarToggle<CR>
let g:tagbar_vertical = 20


""""""""""""""""""
" NERDtree
""""""""""""""""""
map <Leader>w :NERDTreeToggle<CR>


""""""""""""""""""
" CtrlP
""""""""""""""""""
let g:ctrlp_show_hidden = 1 " Show hidden files


""""""""""""""""""
" easymotion
""""""""""""""""""
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1


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
" Trigger configuration.
let g:UltiSnipsExpandTrigger="<C-L>"


""""""""""""""""""
" YouCompleteMe configuration
""""""""""""""""""
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_semantic_triggers =  {
    \   'c' : ['->', '.'],
    \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
    \             're!\[.*\]\s'],
    \   'ocaml' : ['.', '#'],
    \   'cpp,objcpp' : ['->', '.', '::'],
    \   'perl' : ['->'],
    \   'php' : ['->', '::'],
    \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
    \   'ruby' : ['.', '::'],
    \   'lua' : ['.', ':'],
    \   'erlang' : [':'],
    \ }


"""""""""
" neomake
"""""""""
autocmd! BufWritePre * Neomake
let g:neomake_open_list = 2
