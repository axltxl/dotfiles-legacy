"""""""""""""""""""""""""""""""
" Plugin-specific configuration
"""""""""""""""""""""""""""""""

""""""""""""""""""
" airline
""""""""""""""""""
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dot'


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
" easymotion
""""""""""""""""""
" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1


" keep cursor column when JK motion
let g:EasyMotion_startofline = 0

" Search mode for easymotion
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
nmap <Leader>ga <Plug>GitGutterStageHunk
nmap <Leader>gu <Plug>GitGutterRevertHunk
nmap <Leader>gp <Plug>GitGutterPrevHunk
nmap <Leader>gn <Plug>GitGutterNextHunk
"
" Custom fancy signs
let g:gitgutter_sign_added = ""
let g:gitgutter_sign_removed = ""
let g:gitgutter_sign_modified = ""
let g:gitgutter_sign_modified_removed = ""


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
nmap <Leader>nn :Neomake<CR>
let g:neomake_open_list = 2


""""""""""""
" winresizer
""""""""""""
let g:winresizer_start_key = '<Leader>wr'


"""""
" fzf
"""""
let g:fzf_command_prefix = 'Fzf'

" Default fzf layout
" - down / up / left / right
" - window (nvim only)
let g:fzf_layout = { 'down': '~33%' }

" search through files
nmap <Leader>ff :FzfFiles<CR>
nmap <Leader>fg :FzfGitFiles<CR>

" switch to buffers and windows
nmap <Leader><Tab> :FzfBuffers<CR>
nmap <Leader>fb :FzfBuffers<CR>
nmap <Leader>fw :FzfWindows<CR>

" search through command history
nmap <Leader>fh :FzfHistory:<CR>
nmap q: :FzfHistory:<CR>


"""""""""""""""""""
" vim-indent-guides
""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1


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


""""""
" java
""""""
autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Map start key separately from next key
let g:multi_cursor_start_key='<Leader>vc'


""""""""""""""""
" Hard time mode
""""""""""""""""
let g:hardtime_default_on = 1
let g:hardtime_timeout    = 2000
let g:hardtime_showmsg    = 1
