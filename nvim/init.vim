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
set undodir=~/.nvim/undodir
set undofile
set colorcolumn=120
set showmatch
set encoding=utf-8
set guicursor=
set nohlsearch
set termguicolors
set scrolloff=4
set signcolumn=yes
set noincsearch

call plug#begin('~/.nvim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'
Plug 'romainl/vim-dichromatic'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" Status line stuff for lightline
set laststatus=2
set noshowmode

lua require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.bashls.setup{on_attach=require'completion'.on_attach}
lua require'lspconfig'.yamlls.setup{on_attach=require'completion'.on_attach}

autocmd BufEnter * lua require'completion'.on_attach()

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert,noselect
set shortmess+=c

let g:completion_trigger_keyword_length = 1
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

colorscheme dichromatic
highlight Normal guibg=none

nnoremap <leader>l :!pylint %<cr>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fs <cmd>Telescope grep_string<cr>
nnoremap <leader>fb <cmd>Telescope git_branches<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
