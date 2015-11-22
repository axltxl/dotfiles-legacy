""""""""""""""""""""""""""""""""""""""""""
" Essential stuff that needs to be present
""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""
" Absolute essentials
""""""""""""""""""""
scriptencoding utf-8
set encoding=utf-8
set nocompatible              " be iMproved, required


""""""""""""
" Essentials
""""""""""""
set ttyfast        " Use a fast terminal connection
set lazyredraw     " Lazyredraw attempts to solve Vim lag by reducing the amount of processing required.
set autoread       " Automatically read files modified outside of vim

"""""""""""""""""""""""
" Enable filetype plugins
"""""""""""""""""""""""
filetype on
filetype plugin on
filetype indent on


"""""""""""""""""""""""
" Tabs and spaces
"""""""""""""""""""""""
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround


"""""""""""""""""""""""
" Disable stupid backup files and swap files by default
"""""""""""""""""""""""
set nobackup
set nowritebackup
set noswapfile


"""""""""""""""""""""""""""
" neovim-exclusive settings
"""""""""""""""""""""""""""
if has('nvim')
    " Python settings for neovim
    let g:python_host_prog  = '/usr/bin/python'
    let g:python3_host_prog = '/usr/bin/python3'
endif
