syntax on
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set colorcolumn=120
set showmatch
set encoding=utf-8

highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
call plug#end()

autocmd FileType python set colorcolumn=120
let g:pymode = 1
let g:pymode_lint_ignore = ["E501","C901"]
let g:pymode_python = 'python3'
let python_highlight_all = 1

set laststatus=2
set noshowmode

colorscheme gruvbox
set background=dark

nnoremap <leader>l :!clear && pylint %<cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" After ':PlugInstall', cd ~/.vim/plugged/YouCompleteMe/ and
" exexute 'python3 install.py --all'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
