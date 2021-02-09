syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
"set smartindent
"set cindent
"set relativenumber
set indentexpr=
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set colorcolumn=120
set showmatch
set encoding=utf-8
set guicursor=
set nohlsearch
set termguicolors
set scrolloff=8
set signcolumn=yes

call plug#begin('~/.nvim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'
Plug 'romainl/vim-dichromatic'
Plug 'itchyny/lightline.vim'
call plug#end()

" Status line stuff for lightline
set laststatus=2
set noshowmode

"lua require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}

autocmd BufEnter * lua require'completion'.on_attach()

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert,noselect
set shortmess+=c

let g:completion_trigger_keyword_length = 1
let g:completion_timer_cycle = 300

colorscheme dichromatic
highlight Normal guibg=none
